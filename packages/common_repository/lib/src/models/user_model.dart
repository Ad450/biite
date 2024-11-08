import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  factory UserModel({
    String? id,
    required String name,
    required String email,
    required String uid,
    String? profilePic,
    String? description,
    String? deviceToken,
  }) = _UserModel;

  factory UserModel.fromJson(Map json) => _$UserModelFromJson(
        Map.castFrom<dynamic, dynamic, String, dynamic>(json),
      );
}
