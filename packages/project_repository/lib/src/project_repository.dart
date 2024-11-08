import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_storage/cloud_storage.dart';
import 'package:common_repository/common_repository.dart';
import 'package:configuration/configuration.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:local_storage/local_storage.dart';
import 'package:project_repository/project_repository.dart';

abstract class ProjectRepository {
  Future<Either<UIError, List<ProjectModel>>> fetchCreatedProjects();
  Future<Either<UIError, List<ProjectModel>>> fetchActiveProjects();
  Future<Either<UIError, VoidType>> createProject(CreateProjectParam param);
  Future<Either<UIError, List<ProjectModel>>> fetchProjects();
  Future<Either<UIError, ProjectModel>> fetchProjectById(String projectId);
  Future<Either<UIError, int>> fetchPropositionByProjectId(String id);
}

@Singleton(as: ProjectRepository)
class ProjectRepostoryImpl implements ProjectRepository {
  ProjectRepostoryImpl()
      : _hiveStore = localStorageGetit.get<HiveStore>(),
        _firestore = commonGetIt.get<FirebaseFirestore>(),
        _cloudStorage = cloudStorageGetIt.get<CloudStorage>();

  final HiveStore _hiveStore;
  final FirebaseFirestore _firestore;
  final CloudStorage _cloudStorage;

  @override
  Future<Either<UIError, List<ProjectModel>>> fetchActiveProjects() async {
    try {
      final id = await _hiveStore.readItem("id", "id");
      if (id == null) {
        throw Exception("id null at fetch all chats");
      }

      final query = await _firestore
          .collection(kProjectCollection)
          .where("assignedTo", isEqualTo: id)
          .where("status", isEqualTo: "active")
          .get();

      final projects = query.docs.map((e) {
        var project = ProjectModel.fromJson(e.data());

        project = project.copyWith(id: e.id);
        return project;
      }).toList();

      projects.sort((a, b) => a.createdAt.compareTo(b.createdAt));
      return Right(projects.reversed.toList());
      // return Right([]);
    } catch (e) {
      return Left(UIError(e.toString()));
    }
  }

  @override
  Future<Either<UIError, List<ProjectModel>>> fetchCreatedProjects() async {
    try {
      final id = await _hiveStore.readItem("id", "id");
      if (id == null) {
        throw Exception("id null at fetch all chats");
      }

      final projectsSnapshot = await _firestore
          .collection(kProjectCollection)
          .where(
            "ownerId",
            isEqualTo: id,
          )
          .get();

      final projects = projectsSnapshot.docs.map((e) {
        final model = ProjectModel.fromJson(e.data());
        return model.copyWith(id: e.id);
      }).toList();

      projects.sort((a, b) => a.createdAt.compareTo(b.createdAt));
      return Right(projects.reversed.toList());
    } catch (e) {
      return Left(UIError(e.toString()));
    }
  }

  @override
  Future<Either<UIError, VoidType>> createProject(CreateProjectParam param) async {
    try {
      final id = await _hiveStore.readItem("id", "id");
      if (id == null) {
        throw Exception("id null at fetch all chats");
      }

      // upload files to cloud storage
      final futures = <Future<String>>[];
      for (var file in param.files) {
        futures.add(_cloudStorage.upload(file, id));
      }

      List<String> urls = await Future.wait(futures);

      final project = ProjectModel(
        ownerId: id,
        title: param.title,
        description: param.description,
        createdAt: DateTime.now(),
        status: "pending",
        rate: param.rate,
        tags: param.tags,
        files: urls,
      );

      await _firestore.collection(kProjectCollection).add(project.toJson());
      return const Right(VoidType());
    } catch (e) {
      return Left(UIError(e.toString()));
    }
  }

  @override
  Future<Either<UIError, List<ProjectModel>>> fetchProjects() async {
    try {
      final id = await _hiveStore.readItem("id", "id");
      if (id == null) {
        throw Exception("id null at fetch all chats");
      }

      final projectsSnapshot = await _firestore
          .collection(kProjectCollection)
          .where(
            "ownerId",
            isNotEqualTo: id,
          )
          .get();
      final projects = projectsSnapshot.docs.map((e) {
        final model = ProjectModel.fromJson(e.data());
        return model.copyWith(id: e.id);
      }).toList();

      projects.sort((a, b) => a.createdAt.compareTo(b.createdAt));
      return Right(projects.reversed.toList());
    } catch (e) {
      return Left(UIError(e.toString()));
    }
  }

  @override
  Future<Either<UIError, int>> fetchPropositionByProjectId(String id) async {
    try {
      final query = await _firestore
          .collection(kBidCollection)
          .where(
            "projectId",
            isEqualTo: id,
          )
          .get();
      if (query.docs.isNotEmpty) {
        return Right(query.docs.length);
      }
      return const Right(0);
    } catch (e) {
      return Left(UIError(e.toString()));
    }
  }

  @override
  Future<Either<UIError, ProjectModel>> fetchProjectById(String projectId) async {
    try {
      final doc = await _firestore
          .collection(kProjectCollection)
          .doc(
            projectId,
          )
          .get();
      if (!doc.exists) {
        throw Exception("project not found");
      }
      var project = ProjectModel.fromJson(doc.data()!).copyWith(id: doc.id);
      return Right(project);
    } catch (e) {
      return Left(UIError(e.toString()));
    }
  }
}
