import 'package:biite/api/repositories/project.repository.dart';
import 'package:biite/core/presentation/state/name.field.bloc.dart';
import 'package:biite/features/search/state/search.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class FetchProjectsBloc extends Cubit<SearchState> {
  FetchProjectsBloc(
    @Named('search') this._searchField,
    this._projectRepository,
  ) : super(const SearchState.initial());

  final NameFieldBloc _searchField;
  final ProjectRepository _projectRepository;

  void fetch() async {
    emit(const SearchState.loading());

    final query = _searchField.state.maybeMap(orElse: () => "", valid: (state) => state.data);

    final result = await _projectRepository.fetchProjects();

    result.fold((l) => emit(SearchState.errro(l.message)), (r) {
      final searchResult = r.where((e) => e.title.toLowerCase().contains(query)).toList();
      emit(SearchState.fetch(searchResult));
    });
  }
}
