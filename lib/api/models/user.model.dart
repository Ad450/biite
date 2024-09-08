import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.model.freezed.dart';
part 'user.model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  factory UserModel({
    String? id,
    required String firstName,
    required DateTime lastName,
    required String email,
    required double password,
    String? profilePic,
  }) = _UserModel;

  factory UserModel.fromJson(Map json) => _$UserModelFromJson(
        Map.castFrom<dynamic, dynamic, String, dynamic>(json),
      );
}
