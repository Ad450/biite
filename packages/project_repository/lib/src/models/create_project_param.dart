class CreateProjectParam {
  final String title;
  final String description;
  final List<String> files;
  final List<String> tags;
  final double rate;

  CreateProjectParam({
    required this.description,
    required this.files,
    required this.rate,
    required this.tags,
    required this.title,
  });
}
