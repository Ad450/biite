import 'package:biite/api/models/bid.model.dart';
import 'package:biite/api/models/project.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed.state.freezed.dart';

@freezed
class FeedState with _$FeedState {
  const factory FeedState.initial({
    required List<ProjectModel>? activeProjects,
    required List<ProjectModel>? createdProjects,
    required List<BidModel>? bids,
    required String? message,
  }) = _FeedStateInitial;

  const factory FeedState.loading({
    required List<ProjectModel>? activeProjects,
    required List<ProjectModel>? createdProjects,
    required List<BidModel>? bids,
    required String? message,
  }) = _FeedStateLoading;

  const factory FeedState.fetchActiveProjects({
    required List<ProjectModel>? activeProjects,
    required List<ProjectModel>? createdProjects,
    required List<BidModel>? bids,
    required String? message,
  }) = _FeedStateFetchActiveProjects;

  const factory FeedState.fetchCreatedProjects({
    required List<ProjectModel>? activeProjects,
    required List<ProjectModel>? createdProjects,
    required List<BidModel>? bids,
    required String? message,
  }) = _FeedStateFetchCreatedProjects;

  const factory FeedState.fetchBids({
    required List<ProjectModel>? activeProjects,
    required List<ProjectModel>? createdProjects,
    required List<BidModel>? bids,
    required String? message,
  }) = _FeedStateFetchBids;

  const factory FeedState.createProject({
    required List<ProjectModel>? activeProjects,
    required List<ProjectModel>? createdProjects,
    required List<BidModel>? bids,
    required String? message,
  }) = _FeedStateCreateProject;

  const factory FeedState.error({
    required List<ProjectModel>? activeProjects,
    required List<ProjectModel>? createdProjects,
    required List<BidModel>? bids,
    required String? message,
  }) = _FeedStateError;
}
