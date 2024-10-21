import 'package:freezed_annotation/freezed_annotation.dart';

part 'bid_model.freezed.dart';
part 'bid_model.g.dart';

@freezed
abstract class BidModel with _$BidModel {
  factory BidModel({
    String? id,
    required String projectId,
    required String ownerId,
    required String projectOwnerId,
    required String description,
    required DateTime createdAt,
    required String status,
    required double rate,
    required List<String> tags,
  }) = _BidModel;

  factory BidModel.fromJson(Map json) => _$BidModelFromJson(
        Map.castFrom<dynamic, dynamic, String, dynamic>(json),
      );
}
