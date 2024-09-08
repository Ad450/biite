import 'package:freezed_annotation/freezed_annotation.dart';

part 'bid.model.freezed.dart';
part 'bid.model.g.dart';

@freezed
abstract class BidModel with _$BidModel {
  factory BidModel({
    String? id,
    required String description,
    required DateTime createdAt,
    required String status,
    required double rate,
    required List<String> tags,
    required String userId,
  }) = _BidModel;

  factory BidModel.fromJson(Map json) => _$BidModelFromJson(
        Map.castFrom<dynamic, dynamic, String, dynamic>(json),
      );
}
