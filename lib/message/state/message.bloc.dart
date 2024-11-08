import 'package:biite/message/state/message.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:injectable/injectable.dart';
import 'package:messaging_repository/messaging_repository.dart';

@Injectable()
class MessageBloc extends Cubit<MessageState> {
  MessageBloc(
    @Named("chat") this._chatField,
  )   : _messageRepository = messagingGetIt.get<MessageRepository>(),
        super(const MessageState.initial());

  final MessageRepository _messageRepository;
  final NameFieldBloc _chatField;

  Stream<List<MessageModel>> fetchMessages(String roomId) {
    return _messageRepository.fetchMessages(roomId);
  }

  void addMessage(String roomId) async {
    final text = _chatField.state.maybeMap(orElse: () => "", valid: (state) => state.data);
    if (text.isEmpty) {
      emit(const MessageState.error("enter message"));
      return;
    }
    _chatField.nameController.clear();

    try {
      await _messageRepository.addMessage(MessageParam(roomId: roomId, text: text));
      return;
    } catch (e) {
      emit(MessageState.error(e.toString()));
    }
  }

  void fetchLastMessage(String roomId) async {
    try {
      final result = await _messageRepository.getLastMessage(roomId);
      emit(MessageState.lastMessage(result.text));
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
