import 'package:biite/dashboard/bloc/dashboard.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:project_repository/project_repository.dart';

@LazySingleton()
class ActiveProjectsBloc extends Cubit<ActiveProjectState> {
  ActiveProjectsBloc()
      : _projectRepository = projectGetIt.get<ProjectRepository>(),
        super(const ActiveProjectState.initial());

  final ProjectRepository _projectRepository;

  void fetchProjects() async {
    emit(const ActiveProjectState.loading());

    final activeProjectsResult = await _projectRepository.fetchActiveProjects();

    activeProjectsResult.fold(
      (l) => emit(ActiveProjectState.error(l.message)),
      (r) => emit(ActiveProjectState.fetch(r)),
    );
  }
}
