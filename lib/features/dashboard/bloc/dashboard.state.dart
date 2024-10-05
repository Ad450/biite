import 'dart:io';

import 'package:biite/api/models/project.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard.state.freezed.dart';

@freezed
class FeedState with _$FeedState {
  const factory FeedState.initial() = _FeedStateInitial;

  const factory FeedState.fetchActiveProjects({List<ProjectModel>? projects, bool? isLoading}) =
      _FeedStateFetchActiveProjects;

  const factory FeedState.fetchCreatedProjects({List<ProjectModel>? projects, bool? isLoading}) =
      _FeedStateFetchCreatedProjects;

  const factory FeedState.fileSelected({required Set<File> files}) = _FeedStateFileSelected;

  const factory FeedState.error({required String? message}) = _FeedStateError;

  const FeedState._();

  @override
  bool operator ==(Object other) => false;
}

@freezed
class FileState with _$FileState {
  const factory FileState.initial() = _FileStateInitial;

  const factory FileState.fileSelected({required Set<File> files}) = _FileStateFileSelected;

  const factory FileState.error({required String? message}) = _FileStateError;

  const FileState._();

  @override
  bool operator ==(Object other) => false;
}

@freezed
class ProjectState with _$ProjectState {
  const factory ProjectState.initial() = _ProjectStateInitial;

  const factory ProjectState.loading() = _ProjectStateLoading;

  const factory ProjectState.projectCreated() = _ProjectStateProjectCreated;

  const factory ProjectState.error(String message) = _ProjectStateError;

  const ProjectState._();

  @override
  bool operator ==(Object other) => false;
}

@freezed
class ActiveProjectState with _$ActiveProjectState {
  const factory ActiveProjectState.initial() = _ActiveProjectStateInitial;

  const factory ActiveProjectState.loading() = _ActiveProjectStateLoading;

  const factory ActiveProjectState.fetch(List<ProjectModel> projects) = _ActiveProjectStateProjectCreated;

  const factory ActiveProjectState.error(String message) = _ActiveProjectStateError;

  const ActiveProjectState._();

  @override
  bool operator ==(Object other) => false;
}

@freezed
class CreatedProjectState with _$CreatedProjectState {
  const factory CreatedProjectState.initial() = _CreatedProjectStateInitial;

  const factory CreatedProjectState.loading() = _CreatedProjectStateLoading;

  const factory CreatedProjectState.fetch(List<ProjectModel> projects) = _CreatedProjectStateFetch;

  const factory CreatedProjectState.error(String message) = _CreatedProjectStateError;

  const CreatedProjectState._();

  @override
  bool operator ==(Object other) => false;
}

@freezed
class FetchSingleProjectState with _$FetchSingleProjectState {
  const factory FetchSingleProjectState.initial() = _FetchSingleProjectStateInitial;

  const factory FetchSingleProjectState.loading() = _FetchSingleProjectStateLoading;

  const factory FetchSingleProjectState.fetch(ProjectModel project) = _FetchSingleProjectStateFetch;

  const factory FetchSingleProjectState.error(String message) = _FetchSingleProjectStateError;

  const FetchSingleProjectState._();

  @override
  bool operator ==(Object other) => false;
}

@freezed
class TagsState with _$TagsState {
  const factory TagsState.initial() = _TagsStateInitial;

  const factory TagsState.selected({required List<String> tags}) = _TagsStateSelected;
}
