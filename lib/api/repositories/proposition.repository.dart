import 'package:biite/api/api.constants.dart';
import 'package:biite/api/models/bid.model.dart';
import 'package:biite/api/utils/types.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

abstract class BidRepository {
  Future<Either<UIError, List<BidModel>>> fetchBidsById(String id);
}

class BidRepositoryImpl implements BidRepository {
  BidRepositoryImpl(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Future<Either<UIError, List<BidModel>>> fetchBidsById(String id) async {
    try {
      final query = await _firestore.collection(kBidCollection).where("id", isEqualTo: id).get();
      final bids = query.docs.map((e) => BidModel.fromJson(e as Map<dynamic, dynamic>)).toList();
      return Right(bids);
    } catch (e) {
      return Left(UIError(e.toString()));
    }
  }
}
