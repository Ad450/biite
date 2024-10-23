import 'package:biite/search/state/search.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:injectable/injectable.dart';
import 'package:notification/notification.dart';
import 'package:project_repository/project_repository.dart';

@LazySingleton()
class FetchProjectsBloc extends Cubit<SearchState> {
  FetchProjectsBloc(
    @Named('search') this._searchField,
  )   : _projectRepository = projectGetIt.get<ProjectRepository>(),
        super(const SearchState.initial()) {
    /// top level function to get fcm token
    getUserDeviceToken();
  }

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
