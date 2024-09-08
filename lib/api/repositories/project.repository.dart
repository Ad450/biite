import 'package:biite/api/api.constants.dart';
import 'package:biite/api/models/project.model.dart';
import 'package:biite/api/utils/types.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

abstract class ProjectRepository {
  Future<Either<UIError, List<ProjectModel>>> fetchProjects();
  Future<Either<UIError, ProjectModel>> fetchProjectById(String id);
  Future<Either<UIError, VoidType>> createProject(ProjectModel project);
}

class ProjectRepostoryImpl implements ProjectRepository {
  ProjectRepostoryImpl(this._firestore);

  final FirebaseFirestore _firestore;
  @override
  Future<Either<UIError, List<ProjectModel>>> fetchProjects() async {
    try {
      final projectsSnapshot = await _firestore.collection(kProjectCollection).get();
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
  Future<Either<UIError, ProjectModel>> fetchProjectById(String id) async {
    try {
      final doc = await _firestore.collection(kProjectCollection).doc(id).get();
      if (doc.data() == null) {
        throw Exception("document is null");
      }
      final project = ProjectModel.fromJson(doc.data()!);
      return Right(project.copyWith(id: doc.id));
    } catch (e) {
      return Left(UIError(e.toString()));
    }
  }

  @override
  Future<Either<UIError, VoidType>> createProject(ProjectModel project) async {
    try {
      await _firestore.collection(kProjectCollection).add(project.toJson());
      return const Right(VoidType());
    } catch (e) {
      return Left(UIError(e.toString()));
    }
  }
}
