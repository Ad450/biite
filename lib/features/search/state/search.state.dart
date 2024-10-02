import 'package:biite/api/models/project.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search.state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _SearchStateInitial;

  const factory SearchState.loading() = _SearchStateLoading;

  const factory SearchState.fetch(List<ProjectModel> projects) = _SearchStateFetch;
  const factory SearchState.errro(String message) = _SearchStateError;

  const SearchState._();

  bool operator ==(Object other) => false;
}

@freezed
class PropositionState with _$PropositionState {
  const factory PropositionState.initial() = _PropositionStateInitial;

  const factory PropositionState.loading() = _PropositionStateLoading;

  const factory PropositionState.create() = _PropositionStateCreate;
  const factory PropositionState.error(String message) = _PropositionStateError;

  const PropositionState._();

  @override
  bool operator ==(Object other) => false;
}

@freezed
class PropositionCountState with _$PropositionCountState {
  const factory PropositionCountState.initial() = _PropositionCountStateInitial;

  const factory PropositionCountState.loading() = _PropositionCountStateLoading;

  const factory PropositionCountState.fetch(int count) = _PropositionCountStateCreate;
  const factory PropositionCountState.error(String message) = _PropositionCountStateError;

  const PropositionCountState._();

  @override
  bool operator ==(Object other) => false;
}

@freezed
class FetchSingleProjectState with _$FetchSingleProjectState {
  const factory FetchSingleProjectState.initial() = _FetchSingleProjectStateInitial;

  const factory FetchSingleProjectState.loading() = FetchSingleProjectStateLoading;

  const factory FetchSingleProjectState.fetch(ProjectModel model) = FetchSingleProjectStateFetch;
  const factory FetchSingleProjectState.error(String message) = _FetchSingleProjectStateError;

  const FetchSingleProjectState._();

  @override
  bool operator ==(Object other) => false;
}
