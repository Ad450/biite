import 'package:biite/search/state/search.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:project_repository/project_repository.dart';

@Injectable()
class FetchPropositionCountBloc extends Cubit<PropositionCountState> {
  FetchPropositionCountBloc()
      : _projectRepository = projectGetIt.get<ProjectRepository>(),
        super(const PropositionCountState.initial());

  final ProjectRepository _projectRepository;

  void fetch(String id) async {
    emit(const PropositionCountState.loading());

    final result = await _projectRepository.fetchPropositionByProjectId(id);

    result.fold(
      (l) => emit(PropositionCountState.error(l.message)),
      (r) => emit(PropositionCountState.fetch(r)),
    );
  }
}
