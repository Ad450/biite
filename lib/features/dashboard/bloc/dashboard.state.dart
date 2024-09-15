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
