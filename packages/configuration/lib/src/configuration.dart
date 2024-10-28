import 'dart:io';

import 'package:intl/intl.dart';

const kBidCollection = "Bids";
const kProjectCollection = "Projects";
const kUserCollection = "Users";
const kChatCollection = "Chats";
const kMessageCollection = "Messages";

/// [UIError] is a more readable error that
/// is thrown to the client
///
class UIError {
  final String message;
  final dynamic stackTrace;

  UIError(this.message, [this.stackTrace]);
}

/// [VoidType] is returned when an operation yields nothing
/// or basically returns void
///
class VoidType {
  const VoidType();
}

/// [convertDateTime] converts date time to client readable
/// dates

String convertDateTime(DateTime date) {
  final days = DateTime.now().difference(date).inDays;
  // days
  if (days < 7) {
    if (days < 1) return "today";
    if (days >= 1 && days < 2) return "a day ago";
    return "$days days ago";
  }

  double weeks = days / 7;
  final onlyWeeks = weeks.round();
  final remainingDays = days % 7;

  // weeks
  if (onlyWeeks < 4) {
    if (remainingDays < 1) return "${onlyWeeks <= 1 ? "week" : "weeks"} ago ";
    if (remainingDays < 2) return "$onlyWeeks ${onlyWeeks <= 1 ? "week" : "weeks"} ${remainingDays.round()} day";
    return "$onlyWeeks ${onlyWeeks <= 1 ? "week" : "weeks"} ${remainingDays.round()} days ago";
  }

  // months
  double month = weeks / 4;
  final onlyMonths = month.round();
  final remaningWeeks = weeks % 4;

  if (onlyMonths < 12) {
    if (remaningWeeks <= 1) return "${onlyMonths <= 1 ? "a month" : "months"} ago";
    return "$onlyMonths ${onlyMonths <= 1 ? "month" : "months"} ${remaningWeeks.round()} weeks ago";
  }

  final years = onlyMonths / 12;
  final onlyYears = years.round();
  final remainginMonths = onlyMonths % 12;
  if (remainginMonths <= 1) return "${onlyYears <= 1 ? "a year" : "years"} ago";
  return "$onlyYears ${onlyYears <= 1 ? "year" : "years"} ${remainginMonths.round()} months ago";
}

String getCurrency() {
  var format = NumberFormat.simpleCurrency(locale: Platform.localeName, name: "GHS");
  return format.currencySymbol;
}
