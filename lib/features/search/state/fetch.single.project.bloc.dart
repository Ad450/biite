import 'package:biite/api/repositories/project.repository.dart';
import 'package:biite/features/search/state/search.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class FetchSingleProjectsBloc extends Cubit<FetchSingleProjectState> {
  FetchSingleProjectsBloc(
    this._projectRepository,
  ) : super(const FetchSingleProjectState.initial());

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
