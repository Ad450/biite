import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
abstract class MessageModel with _$MessageModel {
  factory MessageModel({
    String? id,
    required String roomId,
    required String ownerId,
    required String text,
    required DateTime createdAt,
    required String status,
    bool? isRight, // for UI
  }) = _MessageModel;

  factory MessageModel.fromJson(Map json) =>
      _$MessageModelFromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(json));
}
