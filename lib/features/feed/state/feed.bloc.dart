import 'package:biite/api/repositories/project.repository.dart';
import 'package:biite/features/feed/state/feed.event.dart';
import 'package:biite/features/feed/state/feed.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class FeedBloc extends Bloc<FeedEvent, FeedState> {
  FeedBloc(this.projectRepository)
      : super(const FeedState.initial(
          activeProjects: null,
          createdProjects: null,
          bids: null,
          message: null,
        ));

  final ProjectRepository projectRepository;

  void _fetchActiveProjects(FetchActiveProjectsEvent event, Emitter<FeedState> emit) async {
    emit(FeedState.loading(
      activeProjects: state.activeProjects,
      createdProjects: state.createdProjects,
      bids: state.bids,
      message: state.message,
    ));

    final result = await projectRepository.fetchActiveProjects();
    result.fold(
      (l) => emit(FeedState.error(
        activeProjects: state.activeProjects,
        createdProjects: state.createdProjects,
        bids: state.bids,
        message: l.message,
      )),
      (r) => emit(FeedState.fetchActiveProjects(
        activeProjects: r,
        createdProjects: state.createdProjects,
        bids: state.bids,
        message: state.message,
      )),
    );
  }

  void _fetchCreatedProjects(FetchCreatedProjectsEvent event, Emitter<FeedState> emit) async {
    emit(FeedState.loading(
      activeProjects: state.activeProjects,
      createdProjects: state.createdProjects,
      bids: state.bids,
      message: state.message,
    ));

    final result = await projectRepository.fetchCreatedProjects();
    result.fold(
      (l) => emit(FeedState.error(
        activeProjects: state.activeProjects,
        createdProjects: state.createdProjects,
        bids: state.bids,
        message: l.message,
      )),
      (r) => emit(FeedState.fetchCreatedProjects(
        activeProjects: state.activeProjects,
        createdProjects: r,
        bids: state.bids,
        message: state.message,
      )),
    );
  }

  void _createProject() {}
}
