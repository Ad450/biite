import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard.state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = _DashboardStateInitial;

  const factory DashboardState.loading() = _DashboardStateLoading;

  const factory DashboardState.projectCreated() = _DashboardStateProjectCreated;

  const factory DashboardState.fileSelected({required Set<File> files}) = _DashboardStateFileSelected;

  const factory DashboardState.error({required String? message}) = _DashboardStateError;
}

@freezed
class TagsState with _$TagsState {
  const factory TagsState.initial() = _TagsStateInitial;

  const factory TagsState.selected({required List<String> tags}) = _TagsStateSelected;

  // const factory TagsState.unSelected({
  //   required List<String> tags,
  //   required int time,
  // }) = _TagsStateUnSelected;
}
