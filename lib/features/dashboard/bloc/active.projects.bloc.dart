import 'package:biite/api/repositories/project.repository.dart';
import 'package:biite/features/dashboard/bloc/dashboard.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class ActiveProjectsBloc extends Cubit<ActiveProjectState> {
  ActiveProjectsBloc(this._projectRepository) : super(const ActiveProjectState.initial());

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
