import 'package:biite/message/state/message.state.dart';
import 'package:chat_repository/chat_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class ChatBloc extends Cubit<ChatState> {
  ChatBloc()
      : _chatRepository = chatGetIt.get<ChatRepository>(),
        super(const ChatState.initial());

  final ChatRepository _chatRepository;

  void fetchChats() async {
    emit(const ChatState.loading());

    final result = await _chatRepository.fetchChats();
    result.fold(
      (l) => emit(ChatState.error(l.message)),
      (r) => emit(ChatState.fetchChats(r)),
    );
  }

  void addChat(String peerId) async {
    emit(const ChatState.loading());
    final result = await _chatRepository.createChat(peerId);
    result.fold(
      (l) => emit(ChatState.error(l.message)),
      (r) => emit(const ChatState.createChat()),
    );
  }
}
