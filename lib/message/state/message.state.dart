import 'package:common_repository/common_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:messaging_repository/messaging_repository.dart';

part 'message.state.freezed.dart';

@freezed
class MessageState with _$MessageState {
  const factory MessageState.initial() = _MessageStateInitial;

  const factory MessageState.loading() = _MessageStateLoading;

  const factory MessageState.fetchChats(List<RoomModel> chats) = _MessageStateFetchChats;

  const factory MessageState.fetchMessages(List<MessageModel> messages) = _FeedStateFetchMessages;

  const factory MessageState.addMessage() = _FeedStateAddMessages;

  const factory MessageState.lastMessage(String text) = _FeedStateLastMessage;

  const factory MessageState.error(String message) = _FeedStateAddError;

  const MessageState._();

  @override
  bool operator ==(Object other) => false;
}

@freezed
class ChatState with _$ChatState {
  const factory ChatState.initial() = _ChatStateInitial;

  const factory ChatState.loading() = _ChatStateLoading;

  const factory ChatState.fetchChats(List<RoomModel> chats) = _ChatStateFetchChats;

  const factory ChatState.createChat() = _ChatStateCreateChat;

  const factory ChatState.error(String message) = _ChatStateError;

  const ChatState._();

  @override
  bool operator ==(Object other) => false;
}
