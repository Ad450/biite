import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard.state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial({
    required String description,
    required Set<File> files,
    required double compensation,
    required String? message,
  }) = _DashboardStateInitial;

  const factory DashboardState.loading({
    required String description,
    required Set<File> files,
    required double compensation,
    required String? message,
  }) = _DashboardStateLoading;

  const factory DashboardState.projectCreated({
    required String description,
    required Set<File> files,
    required double compensation,
    required String? message,
  }) = _DashboardStateProjectCreated;

  const factory DashboardState.fileSelected({
    required String description,
    required Set<File> files,
    required double compensation,
    required String? message,
  }) = _DashboardStateFileSelected;

  const factory DashboardState.error({
    required String description,
    required Set<File> files,
    required double compensation,
    required String? message,
  }) = _DashboardStateError;
}

/// [time] property makes state unique
/// able to escape equality checks
@freezed
class TagsState with _$TagsState {
  const factory TagsState.initial({
    required List<String> tags,
    required int time,
  }) = _TagsStateInitial;

  const factory TagsState.selected({
    required List<String> tags,
    required int time,
  }) = _TagsStateSelected;

  const factory TagsState.unSelected({
    required List<String> tags,
    required int time,
  }) = _TagsStateUnSelected;
}
