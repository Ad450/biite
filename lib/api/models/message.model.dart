import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.model.freezed.dart';
part 'message.model.g.dart';

@freezed
abstract class MessageModel with _$MessageModel {
  factory MessageModel({
    String? id,
    required String roomId,
    required String text,
    required DateTime createdAt,
    required String status,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map json) =>
      _$MessageModelFromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(json));
}
