// import 'package:biite/api/repositories/bid.repository.dart';
// import 'package:biite/api/repositories/project.repository.dart';
// import 'package:biite/api/utils/repository.params.dart';
// import 'package:biite/features/feed/state/feed.event.dart';
// import 'package:biite/features/feed/state/feed.state.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:injectable/injectable.dart';

// @LazySingleton()
// class FeedBloc extends Bloc<FeedEvent, FeedState> {
//   FeedBloc(this.projectRepository, this.bidRepository)
//       : _createProjectDescriptionController = TextEditingController(),
//         _createProjectRateController = TextEditingController(),
//         _createProjectTitleController = TextEditingController(),
//         _createBidDescriptionController = TextEditingController(),
//         _createBidRateController = TextEditingController(),
//         super(const FeedState.initial(activeProjects: null, createdProjects: null, bids: null, message: null)) {
//     on<FetchActiveProjectsEvent>(_fetchActiveProjects);
//     on<FetchCreatedProjectsEvent>(_fetchCreatedProjects);
//     on<CreateProjectEvent>(_createProject);
//     on<CreateBidEvent>(_createBid);
//     on<FetchBidsEvent>(_fetchBidsByProjectId);
//     on<AcceptBidEvent>(_acceptBid);
//   }

//   final ProjectRepository projectRepository;
//   final BidRepository bidRepository;

//   final TextEditingController _createProjectRateController;
//   final TextEditingController _createProjectDescriptionController;
//   final TextEditingController _createProjectTitleController;

//   final TextEditingController _createBidDescriptionController;
//   final TextEditingController _createBidRateController;

//   FeedState _getErrorState(String message) {
//     return FeedState.error(
//       activeProjects: state.activeProjects,
//       createdProjects: state.createdProjects,
//       bids: state.bids,
//       message: message,
//     );
//   }

//   FeedState _getLoadingState() {
//     return FeedState.loading(
//       activeProjects: state.activeProjects,
//       createdProjects: state.createdProjects,
//       bids: state.bids,
//       message: state.message,
//     );
//   }

//   void _fetchActiveProjects(FetchActiveProjectsEvent event, Emitter<FeedState> emit) async {
//     emit(_getLoadingState());

//     final result = await projectRepository.fetchActiveProjects();
//     result.fold(
//       (l) => emit(_getErrorState(l.message)),
//       (r) => emit(FeedState.fetchActiveProjects(
//         activeProjects: r,
//         createdProjects: state.createdProjects,
//         bids: state.bids,
//         message: state.message,
//       )),
//     );
//   }

//   void _fetchCreatedProjects(FetchCreatedProjectsEvent event, Emitter<FeedState> emit) async {
//     emit(_getLoadingState());

//     final result = await projectRepository.fetchCreatedProjects();
//     result.fold(
//       (l) => emit(_getErrorState(l.message)),
//       (r) => emit(FeedState.fetchCreatedProjects(
//         activeProjects: state.activeProjects,
//         createdProjects: r,
//         bids: state.bids,
//         message: state.message,
//       )),
//     );
//   }

//   void _createProject(CreateProjectEvent event, Emitter<FeedState> emit) async {
//     emit(_getLoadingState());

//     final param = CreateProjectParam(
//       description: _createProjectDescriptionController.value.text,
//       files: event.files,
//       rate: double.parse(_createProjectRateController.value.text),
//       tags: event.tags,
//       title: _createProjectTitleController.value.text,
//     );

//     final result = await projectRepository.createProject(param);

//     result.fold(
//       (l) => emit(_getErrorState(l.message)),
//       (r) => emit(FeedState.createProject(
//         activeProjects: state.activeProjects,
//         createdProjects: state.createdProjects,
//         bids: state.bids,
//         message: state.message,
//       )),
//     );
//   }

//   void _createBid(CreateBidEvent event, Emitter<FeedState> emit) async {
//     emit(_getLoadingState());

//     final param = CreateBidParam(
//       bidId: event.bidId,
//       projectId: event.projectId,
//       ownerId: event.ownerId,
//       description: _createBidDescriptionController.value.text,
//       rate: double.parse(_createBidRateController.value.text),
//       tags: event.tags,
//     );

//     final result = await bidRepository.createBid(param);
//     result.fold(
//       (l) => emit(_getErrorState(l.message)),
//       (r) => emit(FeedState.createBid(
//         activeProjects: state.activeProjects,
//         createdProjects: state.createdProjects,
//         bids: state.bids,
//         message: state.message,
//       )),
//     );
//   }

//   void _fetchBidsByProjectId(FetchBidsEvent event, Emitter<FeedState> emit) async {
//     emit(_getLoadingState());

//     final result = await bidRepository.fetchBidsByProjectId(event.projectId);
//     result.fold(
//       (l) => emit(_getErrorState(l.message)),
//       (r) => emit(FeedState.fetchBids(
//         activeProjects: state.activeProjects,
//         createdProjects: state.createdProjects,
//         bids: r,
//         message: state.message,
//       )),
//     );
//   }

//   void _acceptBid(AcceptBidEvent event, Emitter<FeedState> emit) async {
//     emit(_getLoadingState());

//     final result = await bidRepository.acceptBid(event.bidId, event.projectId);
//     result.fold(
//       (l) => emit(_getErrorState(l.message)),
//       (r) => emit(FeedState.acceptBid(
//         activeProjects: state.activeProjects,
//         createdProjects: state.createdProjects,
//         bids: state.bids,
//         message: state.message,
//       )),
//     );
//   }
// }
