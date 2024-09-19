import 'package:biite/api/repositories/project.repository.dart';
import 'package:biite/features/dashboard/bloc/dashboard.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class CreatedProjectBloc extends Cubit<CreatedProjectState> {
  CreatedProjectBloc(this._projectRepository) : super(const CreatedProjectState.initial());
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
