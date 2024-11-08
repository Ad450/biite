import 'package:biite/dashboard/bloc/dashboard.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:project_repository/project_repository.dart';

@LazySingleton()
class FetchSingleProjectBloc extends Cubit<FetchSingleProjectState> {
  FetchSingleProjectBloc()
      : _projectRepository = projectGetIt.get<ProjectRepository>(),
        super(const FetchSingleProjectState.initial());

  final ProjectRepository _projectRepository;

  void fetchProject(String id) async {
    emit(const FetchSingleProjectState.loading());

    final activeProjectsResult = await _projectRepository.fetchProjectById(id);

    activeProjectsResult.fold(
      (l) => emit(FetchSingleProjectState.error(l.message)),
      (r) => emit(FetchSingleProjectState.fetch(r)),
    );
  }
}
