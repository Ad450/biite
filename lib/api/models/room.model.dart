import 'package:freezed_annotation/freezed_annotation.dart';

part 'room.model.freezed.dart';
part 'room.model.g.dart';

@freezed
abstract class RoomModel with _$RoomModel {
  factory RoomModel({
    String? id,
    required String ownerId,
    required String peerId,
    DateTime? createdAt,
    required String peerName,
    String? latestMessageText,
    String? peerProfilePic,
  }) = _RoomModel;

  factory RoomModel.fromJson(Map json) => _$RoomModelFromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(json));
}
