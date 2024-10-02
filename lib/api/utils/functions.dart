String convertDateTime(DateTime date) {
  final days = DateTime.now().difference(date).inDays;
  // days
  if (days < 7) {
    if (days < 1) return "today";
    if (days >= 1 && days < 2) return "a day ago";
    return "$days ago";
  }

  double weeks = days / 7;
  final onlyWeeks = weeks.round();
  final remainingDays = days % 7;

  // weeks
  if (onlyWeeks < 4) {
    if (remainingDays < 1) return "${onlyWeeks <= 1 ? "week" : "weeks"} ago ";
    if (remainingDays < 2) return "${onlyWeeks <= 1 ? "week" : "weeks"} $remainingDays day";
    return "${onlyWeeks <= 1 ? "week" : "weeks"} weeks $remainingDays days";
  }

  // months
  double month = weeks / 4;
  final onlyMonths = month.round();
  final remaningWeeks = weeks % 4;

  if (remaningWeeks <= 1) return "${onlyMonths <= 1 ? "month" : "months"} ago";
  return "${onlyMonths <= 1 ? "month" : "months"} month $remaningWeeks ago";
}
