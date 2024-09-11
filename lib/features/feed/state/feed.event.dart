abstract class FeedEvent {}

class FetchActiveProjectsEvent extends FeedEvent {}

class FetchBidsEvent extends FeedEvent {
  final String projectId;

  FetchBidsEvent(this.projectId);
}

class AcceptBidEvent extends FeedEvent {
  final String bidId;
  final String projectId;

  AcceptBidEvent({required this.bidId, required this.projectId});
}

class FetchCreatedProjectsEvent extends FeedEvent {}

class CreateProjectEvent extends FeedEvent {
  final List<String> tags;
  final List<String> files;

  CreateProjectEvent({required this.files, required this.tags});
}

class CreateBidEvent extends FeedEvent {
  final String projectId;
  final String ownerId;
  final String bidId;
  final List<String> tags;

  CreateBidEvent({
    required this.ownerId,
    required this.projectId,
    required this.bidId,
    required this.tags,
  });
}
