// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MessageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RoomModel> chats) fetchChats,
    required TResult Function(List<MessageModel> messages) fetchMessages,
    required TResult Function() addMessage,
    required TResult Function(String text) lastMessage,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RoomModel> chats)? fetchChats,
    TResult? Function(List<MessageModel> messages)? fetchMessages,
    TResult? Function()? addMessage,
    TResult? Function(String text)? lastMessage,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RoomModel> chats)? fetchChats,
    TResult Function(List<MessageModel> messages)? fetchMessages,
    TResult Function()? addMessage,
    TResult Function(String text)? lastMessage,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessageStateInitial value) initial,
    required TResult Function(_MessageStateLoading value) loading,
    required TResult Function(_MessageStateFetchChats value) fetchChats,
    required TResult Function(_FeedStateFetchMessages value) fetchMessages,
    required TResult Function(_FeedStateAddMessages value) addMessage,
    required TResult Function(_FeedStateLastMessage value) lastMessage,
    required TResult Function(_FeedStateAddError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessageStateInitial value)? initial,
    TResult? Function(_MessageStateLoading value)? loading,
    TResult? Function(_MessageStateFetchChats value)? fetchChats,
    TResult? Function(_FeedStateFetchMessages value)? fetchMessages,
    TResult? Function(_FeedStateAddMessages value)? addMessage,
    TResult? Function(_FeedStateLastMessage value)? lastMessage,
    TResult? Function(_FeedStateAddError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessageStateInitial value)? initial,
    TResult Function(_MessageStateLoading value)? loading,
    TResult Function(_MessageStateFetchChats value)? fetchChats,
    TResult Function(_FeedStateFetchMessages value)? fetchMessages,
    TResult Function(_FeedStateAddMessages value)? addMessage,
    TResult Function(_FeedStateLastMessage value)? lastMessage,
    TResult Function(_FeedStateAddError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageStateCopyWith<$Res> {
  factory $MessageStateCopyWith(
          MessageState value, $Res Function(MessageState) then) =
      _$MessageStateCopyWithImpl<$Res, MessageState>;
}

/// @nodoc
class _$MessageStateCopyWithImpl<$Res, $Val extends MessageState>
    implements $MessageStateCopyWith<$Res> {
  _$MessageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MessageStateInitialImplCopyWith<$Res> {
  factory _$$MessageStateInitialImplCopyWith(_$MessageStateInitialImpl value,
          $Res Function(_$MessageStateInitialImpl) then) =
      __$$MessageStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MessageStateInitialImplCopyWithImpl<$Res>
    extends _$MessageStateCopyWithImpl<$Res, _$MessageStateInitialImpl>
    implements _$$MessageStateInitialImplCopyWith<$Res> {
  __$$MessageStateInitialImplCopyWithImpl(_$MessageStateInitialImpl _value,
      $Res Function(_$MessageStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MessageStateInitialImpl extends _MessageStateInitial {
  const _$MessageStateInitialImpl() : super._();

  @override
  String toString() {
    return 'MessageState.initial()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RoomModel> chats) fetchChats,
    required TResult Function(List<MessageModel> messages) fetchMessages,
    required TResult Function() addMessage,
    required TResult Function(String text) lastMessage,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RoomModel> chats)? fetchChats,
    TResult? Function(List<MessageModel> messages)? fetchMessages,
    TResult? Function()? addMessage,
    TResult? Function(String text)? lastMessage,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RoomModel> chats)? fetchChats,
    TResult Function(List<MessageModel> messages)? fetchMessages,
    TResult Function()? addMessage,
    TResult Function(String text)? lastMessage,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessageStateInitial value) initial,
    required TResult Function(_MessageStateLoading value) loading,
    required TResult Function(_MessageStateFetchChats value) fetchChats,
    required TResult Function(_FeedStateFetchMessages value) fetchMessages,
    required TResult Function(_FeedStateAddMessages value) addMessage,
    required TResult Function(_FeedStateLastMessage value) lastMessage,
    required TResult Function(_FeedStateAddError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessageStateInitial value)? initial,
    TResult? Function(_MessageStateLoading value)? loading,
    TResult? Function(_MessageStateFetchChats value)? fetchChats,
    TResult? Function(_FeedStateFetchMessages value)? fetchMessages,
    TResult? Function(_FeedStateAddMessages value)? addMessage,
    TResult? Function(_FeedStateLastMessage value)? lastMessage,
    TResult? Function(_FeedStateAddError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessageStateInitial value)? initial,
    TResult Function(_MessageStateLoading value)? loading,
    TResult Function(_MessageStateFetchChats value)? fetchChats,
    TResult Function(_FeedStateFetchMessages value)? fetchMessages,
    TResult Function(_FeedStateAddMessages value)? addMessage,
    TResult Function(_FeedStateLastMessage value)? lastMessage,
    TResult Function(_FeedStateAddError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _MessageStateInitial extends MessageState {
  const factory _MessageStateInitial() = _$MessageStateInitialImpl;
  const _MessageStateInitial._() : super._();
}

/// @nodoc
abstract class _$$MessageStateLoadingImplCopyWith<$Res> {
  factory _$$MessageStateLoadingImplCopyWith(_$MessageStateLoadingImpl value,
          $Res Function(_$MessageStateLoadingImpl) then) =
      __$$MessageStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MessageStateLoadingImplCopyWithImpl<$Res>
    extends _$MessageStateCopyWithImpl<$Res, _$MessageStateLoadingImpl>
    implements _$$MessageStateLoadingImplCopyWith<$Res> {
  __$$MessageStateLoadingImplCopyWithImpl(_$MessageStateLoadingImpl _value,
      $Res Function(_$MessageStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MessageStateLoadingImpl extends _MessageStateLoading {
  const _$MessageStateLoadingImpl() : super._();

  @override
  String toString() {
    return 'MessageState.loading()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RoomModel> chats) fetchChats,
    required TResult Function(List<MessageModel> messages) fetchMessages,
    required TResult Function() addMessage,
    required TResult Function(String text) lastMessage,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RoomModel> chats)? fetchChats,
    TResult? Function(List<MessageModel> messages)? fetchMessages,
    TResult? Function()? addMessage,
    TResult? Function(String text)? lastMessage,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RoomModel> chats)? fetchChats,
    TResult Function(List<MessageModel> messages)? fetchMessages,
    TResult Function()? addMessage,
    TResult Function(String text)? lastMessage,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessageStateInitial value) initial,
    required TResult Function(_MessageStateLoading value) loading,
    required TResult Function(_MessageStateFetchChats value) fetchChats,
    required TResult Function(_FeedStateFetchMessages value) fetchMessages,
    required TResult Function(_FeedStateAddMessages value) addMessage,
    required TResult Function(_FeedStateLastMessage value) lastMessage,
    required TResult Function(_FeedStateAddError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessageStateInitial value)? initial,
    TResult? Function(_MessageStateLoading value)? loading,
    TResult? Function(_MessageStateFetchChats value)? fetchChats,
    TResult? Function(_FeedStateFetchMessages value)? fetchMessages,
    TResult? Function(_FeedStateAddMessages value)? addMessage,
    TResult? Function(_FeedStateLastMessage value)? lastMessage,
    TResult? Function(_FeedStateAddError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessageStateInitial value)? initial,
    TResult Function(_MessageStateLoading value)? loading,
    TResult Function(_MessageStateFetchChats value)? fetchChats,
    TResult Function(_FeedStateFetchMessages value)? fetchMessages,
    TResult Function(_FeedStateAddMessages value)? addMessage,
    TResult Function(_FeedStateLastMessage value)? lastMessage,
    TResult Function(_FeedStateAddError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _MessageStateLoading extends MessageState {
  const factory _MessageStateLoading() = _$MessageStateLoadingImpl;
  const _MessageStateLoading._() : super._();
}

/// @nodoc
abstract class _$$MessageStateFetchChatsImplCopyWith<$Res> {
  factory _$$MessageStateFetchChatsImplCopyWith(
          _$MessageStateFetchChatsImpl value,
          $Res Function(_$MessageStateFetchChatsImpl) then) =
      __$$MessageStateFetchChatsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RoomModel> chats});
}

/// @nodoc
class __$$MessageStateFetchChatsImplCopyWithImpl<$Res>
    extends _$MessageStateCopyWithImpl<$Res, _$MessageStateFetchChatsImpl>
    implements _$$MessageStateFetchChatsImplCopyWith<$Res> {
  __$$MessageStateFetchChatsImplCopyWithImpl(
      _$MessageStateFetchChatsImpl _value,
      $Res Function(_$MessageStateFetchChatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = null,
  }) {
    return _then(_$MessageStateFetchChatsImpl(
      null == chats
          ? _value._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>,
    ));
  }
}

/// @nodoc

class _$MessageStateFetchChatsImpl extends _MessageStateFetchChats {
  const _$MessageStateFetchChatsImpl(final List<RoomModel> chats)
      : _chats = chats,
        super._();

  final List<RoomModel> _chats;
  @override
  List<RoomModel> get chats {
    if (_chats is EqualUnmodifiableListView) return _chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chats);
  }

  @override
  String toString() {
    return 'MessageState.fetchChats(chats: $chats)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageStateFetchChatsImplCopyWith<_$MessageStateFetchChatsImpl>
      get copyWith => __$$MessageStateFetchChatsImplCopyWithImpl<
          _$MessageStateFetchChatsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RoomModel> chats) fetchChats,
    required TResult Function(List<MessageModel> messages) fetchMessages,
    required TResult Function() addMessage,
    required TResult Function(String text) lastMessage,
    required TResult Function(String message) error,
  }) {
    return fetchChats(chats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RoomModel> chats)? fetchChats,
    TResult? Function(List<MessageModel> messages)? fetchMessages,
    TResult? Function()? addMessage,
    TResult? Function(String text)? lastMessage,
    TResult? Function(String message)? error,
  }) {
    return fetchChats?.call(chats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RoomModel> chats)? fetchChats,
    TResult Function(List<MessageModel> messages)? fetchMessages,
    TResult Function()? addMessage,
    TResult Function(String text)? lastMessage,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (fetchChats != null) {
      return fetchChats(chats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessageStateInitial value) initial,
    required TResult Function(_MessageStateLoading value) loading,
    required TResult Function(_MessageStateFetchChats value) fetchChats,
    required TResult Function(_FeedStateFetchMessages value) fetchMessages,
    required TResult Function(_FeedStateAddMessages value) addMessage,
    required TResult Function(_FeedStateLastMessage value) lastMessage,
    required TResult Function(_FeedStateAddError value) error,
  }) {
    return fetchChats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessageStateInitial value)? initial,
    TResult? Function(_MessageStateLoading value)? loading,
    TResult? Function(_MessageStateFetchChats value)? fetchChats,
    TResult? Function(_FeedStateFetchMessages value)? fetchMessages,
    TResult? Function(_FeedStateAddMessages value)? addMessage,
    TResult? Function(_FeedStateLastMessage value)? lastMessage,
    TResult? Function(_FeedStateAddError value)? error,
  }) {
    return fetchChats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessageStateInitial value)? initial,
    TResult Function(_MessageStateLoading value)? loading,
    TResult Function(_MessageStateFetchChats value)? fetchChats,
    TResult Function(_FeedStateFetchMessages value)? fetchMessages,
    TResult Function(_FeedStateAddMessages value)? addMessage,
    TResult Function(_FeedStateLastMessage value)? lastMessage,
    TResult Function(_FeedStateAddError value)? error,
    required TResult orElse(),
  }) {
    if (fetchChats != null) {
      return fetchChats(this);
    }
    return orElse();
  }
}

abstract class _MessageStateFetchChats extends MessageState {
  const factory _MessageStateFetchChats(final List<RoomModel> chats) =
      _$MessageStateFetchChatsImpl;
  const _MessageStateFetchChats._() : super._();

  List<RoomModel> get chats;
  @JsonKey(ignore: true)
  _$$MessageStateFetchChatsImplCopyWith<_$MessageStateFetchChatsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FeedStateFetchMessagesImplCopyWith<$Res> {
  factory _$$FeedStateFetchMessagesImplCopyWith(
          _$FeedStateFetchMessagesImpl value,
          $Res Function(_$FeedStateFetchMessagesImpl) then) =
      __$$FeedStateFetchMessagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MessageModel> messages});
}

/// @nodoc
class __$$FeedStateFetchMessagesImplCopyWithImpl<$Res>
    extends _$MessageStateCopyWithImpl<$Res, _$FeedStateFetchMessagesImpl>
    implements _$$FeedStateFetchMessagesImplCopyWith<$Res> {
  __$$FeedStateFetchMessagesImplCopyWithImpl(
      _$FeedStateFetchMessagesImpl _value,
      $Res Function(_$FeedStateFetchMessagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$FeedStateFetchMessagesImpl(
      null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
    ));
  }
}

/// @nodoc

class _$FeedStateFetchMessagesImpl extends _FeedStateFetchMessages {
  const _$FeedStateFetchMessagesImpl(final List<MessageModel> messages)
      : _messages = messages,
        super._();

  final List<MessageModel> _messages;
  @override
  List<MessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'MessageState.fetchMessages(messages: $messages)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedStateFetchMessagesImplCopyWith<_$FeedStateFetchMessagesImpl>
      get copyWith => __$$FeedStateFetchMessagesImplCopyWithImpl<
          _$FeedStateFetchMessagesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RoomModel> chats) fetchChats,
    required TResult Function(List<MessageModel> messages) fetchMessages,
    required TResult Function() addMessage,
    required TResult Function(String text) lastMessage,
    required TResult Function(String message) error,
  }) {
    return fetchMessages(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RoomModel> chats)? fetchChats,
    TResult? Function(List<MessageModel> messages)? fetchMessages,
    TResult? Function()? addMessage,
    TResult? Function(String text)? lastMessage,
    TResult? Function(String message)? error,
  }) {
    return fetchMessages?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RoomModel> chats)? fetchChats,
    TResult Function(List<MessageModel> messages)? fetchMessages,
    TResult Function()? addMessage,
    TResult Function(String text)? lastMessage,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (fetchMessages != null) {
      return fetchMessages(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessageStateInitial value) initial,
    required TResult Function(_MessageStateLoading value) loading,
    required TResult Function(_MessageStateFetchChats value) fetchChats,
    required TResult Function(_FeedStateFetchMessages value) fetchMessages,
    required TResult Function(_FeedStateAddMessages value) addMessage,
    required TResult Function(_FeedStateLastMessage value) lastMessage,
    required TResult Function(_FeedStateAddError value) error,
  }) {
    return fetchMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessageStateInitial value)? initial,
    TResult? Function(_MessageStateLoading value)? loading,
    TResult? Function(_MessageStateFetchChats value)? fetchChats,
    TResult? Function(_FeedStateFetchMessages value)? fetchMessages,
    TResult? Function(_FeedStateAddMessages value)? addMessage,
    TResult? Function(_FeedStateLastMessage value)? lastMessage,
    TResult? Function(_FeedStateAddError value)? error,
  }) {
    return fetchMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessageStateInitial value)? initial,
    TResult Function(_MessageStateLoading value)? loading,
    TResult Function(_MessageStateFetchChats value)? fetchChats,
    TResult Function(_FeedStateFetchMessages value)? fetchMessages,
    TResult Function(_FeedStateAddMessages value)? addMessage,
    TResult Function(_FeedStateLastMessage value)? lastMessage,
    TResult Function(_FeedStateAddError value)? error,
    required TResult orElse(),
  }) {
    if (fetchMessages != null) {
      return fetchMessages(this);
    }
    return orElse();
  }
}

abstract class _FeedStateFetchMessages extends MessageState {
  const factory _FeedStateFetchMessages(final List<MessageModel> messages) =
      _$FeedStateFetchMessagesImpl;
  const _FeedStateFetchMessages._() : super._();

  List<MessageModel> get messages;
  @JsonKey(ignore: true)
  _$$FeedStateFetchMessagesImplCopyWith<_$FeedStateFetchMessagesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FeedStateAddMessagesImplCopyWith<$Res> {
  factory _$$FeedStateAddMessagesImplCopyWith(_$FeedStateAddMessagesImpl value,
          $Res Function(_$FeedStateAddMessagesImpl) then) =
      __$$FeedStateAddMessagesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeedStateAddMessagesImplCopyWithImpl<$Res>
    extends _$MessageStateCopyWithImpl<$Res, _$FeedStateAddMessagesImpl>
    implements _$$FeedStateAddMessagesImplCopyWith<$Res> {
  __$$FeedStateAddMessagesImplCopyWithImpl(_$FeedStateAddMessagesImpl _value,
      $Res Function(_$FeedStateAddMessagesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FeedStateAddMessagesImpl extends _FeedStateAddMessages {
  const _$FeedStateAddMessagesImpl() : super._();

  @override
  String toString() {
    return 'MessageState.addMessage()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RoomModel> chats) fetchChats,
    required TResult Function(List<MessageModel> messages) fetchMessages,
    required TResult Function() addMessage,
    required TResult Function(String text) lastMessage,
    required TResult Function(String message) error,
  }) {
    return addMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RoomModel> chats)? fetchChats,
    TResult? Function(List<MessageModel> messages)? fetchMessages,
    TResult? Function()? addMessage,
    TResult? Function(String text)? lastMessage,
    TResult? Function(String message)? error,
  }) {
    return addMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RoomModel> chats)? fetchChats,
    TResult Function(List<MessageModel> messages)? fetchMessages,
    TResult Function()? addMessage,
    TResult Function(String text)? lastMessage,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (addMessage != null) {
      return addMessage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessageStateInitial value) initial,
    required TResult Function(_MessageStateLoading value) loading,
    required TResult Function(_MessageStateFetchChats value) fetchChats,
    required TResult Function(_FeedStateFetchMessages value) fetchMessages,
    required TResult Function(_FeedStateAddMessages value) addMessage,
    required TResult Function(_FeedStateLastMessage value) lastMessage,
    required TResult Function(_FeedStateAddError value) error,
  }) {
    return addMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessageStateInitial value)? initial,
    TResult? Function(_MessageStateLoading value)? loading,
    TResult? Function(_MessageStateFetchChats value)? fetchChats,
    TResult? Function(_FeedStateFetchMessages value)? fetchMessages,
    TResult? Function(_FeedStateAddMessages value)? addMessage,
    TResult? Function(_FeedStateLastMessage value)? lastMessage,
    TResult? Function(_FeedStateAddError value)? error,
  }) {
    return addMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessageStateInitial value)? initial,
    TResult Function(_MessageStateLoading value)? loading,
    TResult Function(_MessageStateFetchChats value)? fetchChats,
    TResult Function(_FeedStateFetchMessages value)? fetchMessages,
    TResult Function(_FeedStateAddMessages value)? addMessage,
    TResult Function(_FeedStateLastMessage value)? lastMessage,
    TResult Function(_FeedStateAddError value)? error,
    required TResult orElse(),
  }) {
    if (addMessage != null) {
      return addMessage(this);
    }
    return orElse();
  }
}

abstract class _FeedStateAddMessages extends MessageState {
  const factory _FeedStateAddMessages() = _$FeedStateAddMessagesImpl;
  const _FeedStateAddMessages._() : super._();
}

/// @nodoc
abstract class _$$FeedStateLastMessageImplCopyWith<$Res> {
  factory _$$FeedStateLastMessageImplCopyWith(_$FeedStateLastMessageImpl value,
          $Res Function(_$FeedStateLastMessageImpl) then) =
      __$$FeedStateLastMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$FeedStateLastMessageImplCopyWithImpl<$Res>
    extends _$MessageStateCopyWithImpl<$Res, _$FeedStateLastMessageImpl>
    implements _$$FeedStateLastMessageImplCopyWith<$Res> {
  __$$FeedStateLastMessageImplCopyWithImpl(_$FeedStateLastMessageImpl _value,
      $Res Function(_$FeedStateLastMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$FeedStateLastMessageImpl(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FeedStateLastMessageImpl extends _FeedStateLastMessage {
  const _$FeedStateLastMessageImpl(this.text) : super._();

  @override
  final String text;

  @override
  String toString() {
    return 'MessageState.lastMessage(text: $text)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedStateLastMessageImplCopyWith<_$FeedStateLastMessageImpl>
      get copyWith =>
          __$$FeedStateLastMessageImplCopyWithImpl<_$FeedStateLastMessageImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RoomModel> chats) fetchChats,
    required TResult Function(List<MessageModel> messages) fetchMessages,
    required TResult Function() addMessage,
    required TResult Function(String text) lastMessage,
    required TResult Function(String message) error,
  }) {
    return lastMessage(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RoomModel> chats)? fetchChats,
    TResult? Function(List<MessageModel> messages)? fetchMessages,
    TResult? Function()? addMessage,
    TResult? Function(String text)? lastMessage,
    TResult? Function(String message)? error,
  }) {
    return lastMessage?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RoomModel> chats)? fetchChats,
    TResult Function(List<MessageModel> messages)? fetchMessages,
    TResult Function()? addMessage,
    TResult Function(String text)? lastMessage,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (lastMessage != null) {
      return lastMessage(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessageStateInitial value) initial,
    required TResult Function(_MessageStateLoading value) loading,
    required TResult Function(_MessageStateFetchChats value) fetchChats,
    required TResult Function(_FeedStateFetchMessages value) fetchMessages,
    required TResult Function(_FeedStateAddMessages value) addMessage,
    required TResult Function(_FeedStateLastMessage value) lastMessage,
    required TResult Function(_FeedStateAddError value) error,
  }) {
    return lastMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessageStateInitial value)? initial,
    TResult? Function(_MessageStateLoading value)? loading,
    TResult? Function(_MessageStateFetchChats value)? fetchChats,
    TResult? Function(_FeedStateFetchMessages value)? fetchMessages,
    TResult? Function(_FeedStateAddMessages value)? addMessage,
    TResult? Function(_FeedStateLastMessage value)? lastMessage,
    TResult? Function(_FeedStateAddError value)? error,
  }) {
    return lastMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessageStateInitial value)? initial,
    TResult Function(_MessageStateLoading value)? loading,
    TResult Function(_MessageStateFetchChats value)? fetchChats,
    TResult Function(_FeedStateFetchMessages value)? fetchMessages,
    TResult Function(_FeedStateAddMessages value)? addMessage,
    TResult Function(_FeedStateLastMessage value)? lastMessage,
    TResult Function(_FeedStateAddError value)? error,
    required TResult orElse(),
  }) {
    if (lastMessage != null) {
      return lastMessage(this);
    }
    return orElse();
  }
}

abstract class _FeedStateLastMessage extends MessageState {
  const factory _FeedStateLastMessage(final String text) =
      _$FeedStateLastMessageImpl;
  const _FeedStateLastMessage._() : super._();

  String get text;
  @JsonKey(ignore: true)
  _$$FeedStateLastMessageImplCopyWith<_$FeedStateLastMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FeedStateAddErrorImplCopyWith<$Res> {
  factory _$$FeedStateAddErrorImplCopyWith(_$FeedStateAddErrorImpl value,
          $Res Function(_$FeedStateAddErrorImpl) then) =
      __$$FeedStateAddErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FeedStateAddErrorImplCopyWithImpl<$Res>
    extends _$MessageStateCopyWithImpl<$Res, _$FeedStateAddErrorImpl>
    implements _$$FeedStateAddErrorImplCopyWith<$Res> {
  __$$FeedStateAddErrorImplCopyWithImpl(_$FeedStateAddErrorImpl _value,
      $Res Function(_$FeedStateAddErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FeedStateAddErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FeedStateAddErrorImpl extends _FeedStateAddError {
  const _$FeedStateAddErrorImpl(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'MessageState.error(message: $message)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedStateAddErrorImplCopyWith<_$FeedStateAddErrorImpl> get copyWith =>
      __$$FeedStateAddErrorImplCopyWithImpl<_$FeedStateAddErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RoomModel> chats) fetchChats,
    required TResult Function(List<MessageModel> messages) fetchMessages,
    required TResult Function() addMessage,
    required TResult Function(String text) lastMessage,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RoomModel> chats)? fetchChats,
    TResult? Function(List<MessageModel> messages)? fetchMessages,
    TResult? Function()? addMessage,
    TResult? Function(String text)? lastMessage,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RoomModel> chats)? fetchChats,
    TResult Function(List<MessageModel> messages)? fetchMessages,
    TResult Function()? addMessage,
    TResult Function(String text)? lastMessage,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessageStateInitial value) initial,
    required TResult Function(_MessageStateLoading value) loading,
    required TResult Function(_MessageStateFetchChats value) fetchChats,
    required TResult Function(_FeedStateFetchMessages value) fetchMessages,
    required TResult Function(_FeedStateAddMessages value) addMessage,
    required TResult Function(_FeedStateLastMessage value) lastMessage,
    required TResult Function(_FeedStateAddError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessageStateInitial value)? initial,
    TResult? Function(_MessageStateLoading value)? loading,
    TResult? Function(_MessageStateFetchChats value)? fetchChats,
    TResult? Function(_FeedStateFetchMessages value)? fetchMessages,
    TResult? Function(_FeedStateAddMessages value)? addMessage,
    TResult? Function(_FeedStateLastMessage value)? lastMessage,
    TResult? Function(_FeedStateAddError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessageStateInitial value)? initial,
    TResult Function(_MessageStateLoading value)? loading,
    TResult Function(_MessageStateFetchChats value)? fetchChats,
    TResult Function(_FeedStateFetchMessages value)? fetchMessages,
    TResult Function(_FeedStateAddMessages value)? addMessage,
    TResult Function(_FeedStateLastMessage value)? lastMessage,
    TResult Function(_FeedStateAddError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _FeedStateAddError extends MessageState {
  const factory _FeedStateAddError(final String message) =
      _$FeedStateAddErrorImpl;
  const _FeedStateAddError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$FeedStateAddErrorImplCopyWith<_$FeedStateAddErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RoomModel> chats) fetchChats,
    required TResult Function() createChat,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RoomModel> chats)? fetchChats,
    TResult? Function()? createChat,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RoomModel> chats)? fetchChats,
    TResult Function()? createChat,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatStateInitial value) initial,
    required TResult Function(_ChatStateLoading value) loading,
    required TResult Function(_ChatStateFetchChats value) fetchChats,
    required TResult Function(_ChatStateCreateChat value) createChat,
    required TResult Function(_ChatStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatStateInitial value)? initial,
    TResult? Function(_ChatStateLoading value)? loading,
    TResult? Function(_ChatStateFetchChats value)? fetchChats,
    TResult? Function(_ChatStateCreateChat value)? createChat,
    TResult? Function(_ChatStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatStateInitial value)? initial,
    TResult Function(_ChatStateLoading value)? loading,
    TResult Function(_ChatStateFetchChats value)? fetchChats,
    TResult Function(_ChatStateCreateChat value)? createChat,
    TResult Function(_ChatStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChatStateInitialImplCopyWith<$Res> {
  factory _$$ChatStateInitialImplCopyWith(_$ChatStateInitialImpl value,
          $Res Function(_$ChatStateInitialImpl) then) =
      __$$ChatStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatStateInitialImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateInitialImpl>
    implements _$$ChatStateInitialImplCopyWith<$Res> {
  __$$ChatStateInitialImplCopyWithImpl(_$ChatStateInitialImpl _value,
      $Res Function(_$ChatStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatStateInitialImpl extends _ChatStateInitial {
  const _$ChatStateInitialImpl() : super._();

  @override
  String toString() {
    return 'ChatState.initial()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RoomModel> chats) fetchChats,
    required TResult Function() createChat,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RoomModel> chats)? fetchChats,
    TResult? Function()? createChat,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RoomModel> chats)? fetchChats,
    TResult Function()? createChat,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatStateInitial value) initial,
    required TResult Function(_ChatStateLoading value) loading,
    required TResult Function(_ChatStateFetchChats value) fetchChats,
    required TResult Function(_ChatStateCreateChat value) createChat,
    required TResult Function(_ChatStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatStateInitial value)? initial,
    TResult? Function(_ChatStateLoading value)? loading,
    TResult? Function(_ChatStateFetchChats value)? fetchChats,
    TResult? Function(_ChatStateCreateChat value)? createChat,
    TResult? Function(_ChatStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatStateInitial value)? initial,
    TResult Function(_ChatStateLoading value)? loading,
    TResult Function(_ChatStateFetchChats value)? fetchChats,
    TResult Function(_ChatStateCreateChat value)? createChat,
    TResult Function(_ChatStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ChatStateInitial extends ChatState {
  const factory _ChatStateInitial() = _$ChatStateInitialImpl;
  const _ChatStateInitial._() : super._();
}

/// @nodoc
abstract class _$$ChatStateLoadingImplCopyWith<$Res> {
  factory _$$ChatStateLoadingImplCopyWith(_$ChatStateLoadingImpl value,
          $Res Function(_$ChatStateLoadingImpl) then) =
      __$$ChatStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatStateLoadingImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateLoadingImpl>
    implements _$$ChatStateLoadingImplCopyWith<$Res> {
  __$$ChatStateLoadingImplCopyWithImpl(_$ChatStateLoadingImpl _value,
      $Res Function(_$ChatStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatStateLoadingImpl extends _ChatStateLoading {
  const _$ChatStateLoadingImpl() : super._();

  @override
  String toString() {
    return 'ChatState.loading()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RoomModel> chats) fetchChats,
    required TResult Function() createChat,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RoomModel> chats)? fetchChats,
    TResult? Function()? createChat,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RoomModel> chats)? fetchChats,
    TResult Function()? createChat,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatStateInitial value) initial,
    required TResult Function(_ChatStateLoading value) loading,
    required TResult Function(_ChatStateFetchChats value) fetchChats,
    required TResult Function(_ChatStateCreateChat value) createChat,
    required TResult Function(_ChatStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatStateInitial value)? initial,
    TResult? Function(_ChatStateLoading value)? loading,
    TResult? Function(_ChatStateFetchChats value)? fetchChats,
    TResult? Function(_ChatStateCreateChat value)? createChat,
    TResult? Function(_ChatStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatStateInitial value)? initial,
    TResult Function(_ChatStateLoading value)? loading,
    TResult Function(_ChatStateFetchChats value)? fetchChats,
    TResult Function(_ChatStateCreateChat value)? createChat,
    TResult Function(_ChatStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ChatStateLoading extends ChatState {
  const factory _ChatStateLoading() = _$ChatStateLoadingImpl;
  const _ChatStateLoading._() : super._();
}

/// @nodoc
abstract class _$$ChatStateFetchChatsImplCopyWith<$Res> {
  factory _$$ChatStateFetchChatsImplCopyWith(_$ChatStateFetchChatsImpl value,
          $Res Function(_$ChatStateFetchChatsImpl) then) =
      __$$ChatStateFetchChatsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RoomModel> chats});
}

/// @nodoc
class __$$ChatStateFetchChatsImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateFetchChatsImpl>
    implements _$$ChatStateFetchChatsImplCopyWith<$Res> {
  __$$ChatStateFetchChatsImplCopyWithImpl(_$ChatStateFetchChatsImpl _value,
      $Res Function(_$ChatStateFetchChatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = null,
  }) {
    return _then(_$ChatStateFetchChatsImpl(
      null == chats
          ? _value._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>,
    ));
  }
}

/// @nodoc

class _$ChatStateFetchChatsImpl extends _ChatStateFetchChats {
  const _$ChatStateFetchChatsImpl(final List<RoomModel> chats)
      : _chats = chats,
        super._();

  final List<RoomModel> _chats;
  @override
  List<RoomModel> get chats {
    if (_chats is EqualUnmodifiableListView) return _chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chats);
  }

  @override
  String toString() {
    return 'ChatState.fetchChats(chats: $chats)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateFetchChatsImplCopyWith<_$ChatStateFetchChatsImpl> get copyWith =>
      __$$ChatStateFetchChatsImplCopyWithImpl<_$ChatStateFetchChatsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RoomModel> chats) fetchChats,
    required TResult Function() createChat,
    required TResult Function(String message) error,
  }) {
    return fetchChats(chats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RoomModel> chats)? fetchChats,
    TResult? Function()? createChat,
    TResult? Function(String message)? error,
  }) {
    return fetchChats?.call(chats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RoomModel> chats)? fetchChats,
    TResult Function()? createChat,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (fetchChats != null) {
      return fetchChats(chats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatStateInitial value) initial,
    required TResult Function(_ChatStateLoading value) loading,
    required TResult Function(_ChatStateFetchChats value) fetchChats,
    required TResult Function(_ChatStateCreateChat value) createChat,
    required TResult Function(_ChatStateError value) error,
  }) {
    return fetchChats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatStateInitial value)? initial,
    TResult? Function(_ChatStateLoading value)? loading,
    TResult? Function(_ChatStateFetchChats value)? fetchChats,
    TResult? Function(_ChatStateCreateChat value)? createChat,
    TResult? Function(_ChatStateError value)? error,
  }) {
    return fetchChats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatStateInitial value)? initial,
    TResult Function(_ChatStateLoading value)? loading,
    TResult Function(_ChatStateFetchChats value)? fetchChats,
    TResult Function(_ChatStateCreateChat value)? createChat,
    TResult Function(_ChatStateError value)? error,
    required TResult orElse(),
  }) {
    if (fetchChats != null) {
      return fetchChats(this);
    }
    return orElse();
  }
}

abstract class _ChatStateFetchChats extends ChatState {
  const factory _ChatStateFetchChats(final List<RoomModel> chats) =
      _$ChatStateFetchChatsImpl;
  const _ChatStateFetchChats._() : super._();

  List<RoomModel> get chats;
  @JsonKey(ignore: true)
  _$$ChatStateFetchChatsImplCopyWith<_$ChatStateFetchChatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatStateCreateChatImplCopyWith<$Res> {
  factory _$$ChatStateCreateChatImplCopyWith(_$ChatStateCreateChatImpl value,
          $Res Function(_$ChatStateCreateChatImpl) then) =
      __$$ChatStateCreateChatImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatStateCreateChatImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateCreateChatImpl>
    implements _$$ChatStateCreateChatImplCopyWith<$Res> {
  __$$ChatStateCreateChatImplCopyWithImpl(_$ChatStateCreateChatImpl _value,
      $Res Function(_$ChatStateCreateChatImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatStateCreateChatImpl extends _ChatStateCreateChat {
  const _$ChatStateCreateChatImpl() : super._();

  @override
  String toString() {
    return 'ChatState.createChat()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RoomModel> chats) fetchChats,
    required TResult Function() createChat,
    required TResult Function(String message) error,
  }) {
    return createChat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RoomModel> chats)? fetchChats,
    TResult? Function()? createChat,
    TResult? Function(String message)? error,
  }) {
    return createChat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RoomModel> chats)? fetchChats,
    TResult Function()? createChat,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (createChat != null) {
      return createChat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatStateInitial value) initial,
    required TResult Function(_ChatStateLoading value) loading,
    required TResult Function(_ChatStateFetchChats value) fetchChats,
    required TResult Function(_ChatStateCreateChat value) createChat,
    required TResult Function(_ChatStateError value) error,
  }) {
    return createChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatStateInitial value)? initial,
    TResult? Function(_ChatStateLoading value)? loading,
    TResult? Function(_ChatStateFetchChats value)? fetchChats,
    TResult? Function(_ChatStateCreateChat value)? createChat,
    TResult? Function(_ChatStateError value)? error,
  }) {
    return createChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatStateInitial value)? initial,
    TResult Function(_ChatStateLoading value)? loading,
    TResult Function(_ChatStateFetchChats value)? fetchChats,
    TResult Function(_ChatStateCreateChat value)? createChat,
    TResult Function(_ChatStateError value)? error,
    required TResult orElse(),
  }) {
    if (createChat != null) {
      return createChat(this);
    }
    return orElse();
  }
}

abstract class _ChatStateCreateChat extends ChatState {
  const factory _ChatStateCreateChat() = _$ChatStateCreateChatImpl;
  const _ChatStateCreateChat._() : super._();
}

/// @nodoc
abstract class _$$ChatStateErrorImplCopyWith<$Res> {
  factory _$$ChatStateErrorImplCopyWith(_$ChatStateErrorImpl value,
          $Res Function(_$ChatStateErrorImpl) then) =
      __$$ChatStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ChatStateErrorImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateErrorImpl>
    implements _$$ChatStateErrorImplCopyWith<$Res> {
  __$$ChatStateErrorImplCopyWithImpl(
      _$ChatStateErrorImpl _value, $Res Function(_$ChatStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ChatStateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatStateErrorImpl extends _ChatStateError {
  const _$ChatStateErrorImpl(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'ChatState.error(message: $message)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateErrorImplCopyWith<_$ChatStateErrorImpl> get copyWith =>
      __$$ChatStateErrorImplCopyWithImpl<_$ChatStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RoomModel> chats) fetchChats,
    required TResult Function() createChat,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RoomModel> chats)? fetchChats,
    TResult? Function()? createChat,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RoomModel> chats)? fetchChats,
    TResult Function()? createChat,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatStateInitial value) initial,
    required TResult Function(_ChatStateLoading value) loading,
    required TResult Function(_ChatStateFetchChats value) fetchChats,
    required TResult Function(_ChatStateCreateChat value) createChat,
    required TResult Function(_ChatStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatStateInitial value)? initial,
    TResult? Function(_ChatStateLoading value)? loading,
    TResult? Function(_ChatStateFetchChats value)? fetchChats,
    TResult? Function(_ChatStateCreateChat value)? createChat,
    TResult? Function(_ChatStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatStateInitial value)? initial,
    TResult Function(_ChatStateLoading value)? loading,
    TResult Function(_ChatStateFetchChats value)? fetchChats,
    TResult Function(_ChatStateCreateChat value)? createChat,
    TResult Function(_ChatStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ChatStateError extends ChatState {
  const factory _ChatStateError(final String message) = _$ChatStateErrorImpl;
  const _ChatStateError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$ChatStateErrorImplCopyWith<_$ChatStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
