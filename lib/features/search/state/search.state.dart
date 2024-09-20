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
