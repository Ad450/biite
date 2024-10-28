import 'package:biite/dashboard/bloc/dashboard.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:project_repository/project_repository.dart';

@LazySingleton()
class CreatedProjectBloc extends Cubit<CreatedProjectState> {
  CreatedProjectBloc()
      : _projectRepository = projectGetIt.get<ProjectRepository>(),
        super(const CreatedProjectState.initial());
  final ProjectRepository _projectRepository;

  void fetchProjects() async {
    emit(const CreatedProjectState.loading());

    final activeProjectsResult = await _projectRepository.fetchCreatedProjects();

    activeProjectsResult.fold(
      (l) => emit(CreatedProjectState.error(l.message)),
      (r) => emit(CreatedProjectState.fetch(r)),
    );
  }
}
