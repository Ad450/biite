class CreateBidParam {
  final String projectId;
  final String? bidId;
  final List<String> tags;
  final String description;
  final double rate;

  CreateBidParam({
    this.bidId,
    required this.projectId,
    required this.description,
    required this.rate,
    required this.tags,
  });
}
