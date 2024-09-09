import 'package:biite/api/repositories/project.repository.dart';
import 'package:biite/api/utils/repository.params.dart';
import 'package:biite/features/feed/state/feed.event.dart';
import 'package:biite/features/feed/state/feed.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class FeedBloc extends Bloc<FeedEvent, FeedState> {
  FeedBloc(this.projectRepository)
      : _createProjectDescriptionController = TextEditingController(),
        _createProjectRateController = TextEditingController(),
        _createProjectTitleController = TextEditingController(),
        super(const FeedState.initial(activeProjects: null, createdProjects: null, bids: null, message: null)) {
    on<FetchActiveProjectsEvent>(_fetchActiveProjects);
    on<FetchCreatedProjectsEvent>(_fetchCreatedProjects);
    on<CreateProjectEvent>(_createProject);
  }

  final ProjectRepository projectRepository;

  final TextEditingController _createProjectRateController;
  final TextEditingController _createProjectDescriptionController;
  final TextEditingController _createProjectTitleController;

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

  void _createProject(CreateProjectEvent event, Emitter<FeedState> emit) async {
    emit(FeedState.loading(
      activeProjects: state.activeProjects,
      createdProjects: state.createdProjects,
      bids: state.bids,
      message: state.message,
    ));

    final param = CreateProjectParam(
      description: _createProjectDescriptionController.value.text,
      files: event.files,
      rate: double.parse(_createProjectRateController.value.text),
      tags: event.tags,
      title: _createProjectTitleController.value.text,
    );

    final result = await projectRepository.createProject(param);

    result.fold(
      (l) => emit(FeedState.error(
        activeProjects: state.activeProjects,
        createdProjects: state.createdProjects,
        bids: state.bids,
        message: l.message,
      )),
      (r) => emit(FeedState.createProject(
        activeProjects: state.activeProjects,
        createdProjects: state.createdProjects,
        bids: state.bids,
        message: state.message,
      )),
    );
  }
}
