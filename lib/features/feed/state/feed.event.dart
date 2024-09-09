import 'package:biite/api/utils/repository.params.dart';

abstract class FeedEvent {}

class FetchActiveProjectsEvent extends FeedEvent {}

class FetchBidsEvent extends FeedEvent {}

class FetchCreatedProjectsEvent extends FeedEvent {}

class CreateProjectEvent extends FeedEvent {
  final List<String> tags;
  final List<String> files;

  CreateProjectEvent({required this.files, required this.tags});
}

class CreateBidEvent extends FeedEvent {}
