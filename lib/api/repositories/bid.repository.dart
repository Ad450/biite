import 'package:biite/api/api.constants.dart';
import 'package:biite/api/models/bid.model.dart';
import 'package:biite/api/utils/types.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

abstract class BidRepository {
  Future<Either<UIError, List<BidModel>>> fetchBidsByProjectId(String projectId);
  Future<Either<UIError, VoidType>> createBid(BidModel bid);
}

class BidRepositoryImpl implements BidRepository {
  BidRepositoryImpl(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Future<Either<UIError, List<BidModel>>> fetchBidsByProjectId(String projectId) async {
    try {
      final query = await _firestore.collection(kBidCollection).where("projectId", isEqualTo: projectId).get();
      final bids = query.docs.map((e) {
        var bid = BidModel.fromJson(e.data());
        bid = bid.copyWith(id: e.id);
        return bid;
      }).toList();
      return Right(bids);
    } catch (e) {
      return Left(UIError(e.toString()));
    }
  }

  @override
  Future<Either<UIError, VoidType>> createBid(BidModel bid) async {
    try {
      await _firestore.collection(kBidCollection).add(bid.toJson());
      return const Right(VoidType());
    } catch (e) {
      return Left(UIError(e.toString()));
    }
  }
}
