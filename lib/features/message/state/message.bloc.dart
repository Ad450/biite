import 'package:biite/api/models/message.model.dart';
import 'package:biite/api/repositories/message.repository.dart';
import 'package:biite/api/utils/repository.params.dart';
import 'package:biite/core/presentation/state/name.field.bloc.dart';
import 'package:biite/features/message/state/message.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class MessageBloc extends Cubit<MessageState> {
  MessageBloc(
    this._messageRepository,
    @Named("chat") this._chatField,
  ) : super(const MessageState.initial());

  final MessageRepository _messageRepository;
  final NameFieldBloc _chatField;

  // void fetchMessages(String roomId) async {
  //   try {
  //     final result = await _messageRepository.fetchMessages(roomId);
  //     emit(MessageState.fetchMessages(result));
  //     return;
  //   } catch (e) {
  //     emit(MessageState.error(e.toString()));
  //   }
  // }

  Stream<List<MessageModel>> fetchMessages(String roomId) {
    return _messageRepository.fetchMessages(roomId);
  }

  void addMessage(String roomId) async {
    final text = _chatField.state.maybeMap(orElse: () => "", valid: (state) => state.data);
    if (text.isEmpty) {
      emit(const MessageState.error("enter message"));
      return;
    }

    try {
      await _messageRepository.addMessage(MessageParam(roomId: roomId, text: text));
      _chatField.nameController.clear();
      return;
    } catch (e) {
      emit(MessageState.error(e.toString()));
    }
  }
}
