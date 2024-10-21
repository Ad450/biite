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
