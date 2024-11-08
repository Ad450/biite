import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_model.freezed.dart';
part 'project_model.g.dart';

@freezed
abstract class ProjectModel with _$ProjectModel {
  factory ProjectModel({
    String? id,
    required String ownerId,
    String? assignedTo,
    required String title,
    required String description,
    required DateTime createdAt,
    required String status,
    required double rate,
    required List<String> tags,
    required List<String> files,
    int? propositionCount,
  }) = _ProjectModel;

  factory ProjectModel.fromJson(Map json) => _$ProjectModelFromJson(
        Map.castFrom<dynamic, dynamic, String, dynamic>(json),
      );
}
