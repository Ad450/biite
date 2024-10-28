import 'package:biite/search/state/search.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:project_repository/project_repository.dart';

@LazySingleton()
class FetchSingleProjectsBloc extends Cubit<FetchSingleProjectState> {
  FetchSingleProjectsBloc()
      : _projectRepository = projectGetIt.get<ProjectRepository>(),
        super(const FetchSingleProjectState.initial());

  final ProjectRepository _projectRepository;

  void fetchProject(String projectId) async {
    emit(const FetchSingleProjectState.loading());

    final result = await _projectRepository.fetchProjectById(projectId);

    result.fold(
      (l) => emit(FetchSingleProjectState.error(l.message)),
      (r) => emit(FetchSingleProjectState.fetch(r)),
    );
  }
}
