import 'package:biite/api/api.constants.dart';
import 'package:biite/api/models/project.model.dart';
import 'package:biite/api/storage/cloud.storage.dart';
import 'package:biite/api/storage/hive.storage.dart';
import 'package:biite/api/utils/repository.params.dart';
import 'package:biite/api/utils/types.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class ProjectRepository {
  Future<Either<UIError, List<ProjectModel>>> fetchCreatedProjects();
  Future<Either<UIError, List<ProjectModel>>> fetchActiveProjects();
  Future<Either<UIError, VoidType>> createProject(CreateProjectParam param);
}

@LazySingleton(as: ProjectRepository)
class ProjectRepostoryImpl implements ProjectRepository {
  ProjectRepostoryImpl(this._firestore, this._hiveStore, this._cloudStorage);

  final HiveStore _hiveStore;
  final FirebaseFirestore _firestore;
  final CloudStorage _cloudStorage;
  @override
  Future<Either<UIError, List<ProjectModel>>> fetchCreatedProjects() async {
    try {
      final id = await _hiveStore.readItem("id", "id");
      if (id == null) {
        throw Exception("id null at fetch all chats");
      }

      final projectsSnapshot = await _firestore.collection(kProjectCollection).where("ownerId", isEqualTo: id).get();
      final projects = projectsSnapshot.docs.map((e) {
        final model = ProjectModel.fromJson(e.data());
        return model.copyWith(id: e.id);
      }).toList();
      return Right(projects);
    } catch (e) {
      return Left(UIError(e.toString()));
    }
  }

  @override
  Future<Either<UIError, List<ProjectModel>>> fetchActiveProjects() async {
    try {
      final id = await _hiveStore.readItem("id", "id");
      if (id == null) {
        throw Exception("id null at fetch all chats");
      }

      final query = await _firestore
          .collection(kProjectCollection)
          .where("status", isEqualTo: "active")
          .where("assignedTo", isEqualTo: id)
          .get();
      final projects = query.docs.map((e) {
        var project = ProjectModel.fromJson(e.data());

        project = project.copyWith(id: e.id);
        return project;
      }).toList();
      return Right(projects);
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
        futures.add(_cloudStorage.upload(file));
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
}
