import 'package:biite/api/api.constants.dart';
import 'package:biite/api/models/bid.model.dart';
import 'package:biite/api/utils/types.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class BidRepository {
  Future<Either<UIError, List<BidModel>>> fetchBidsByProjectId(String projectId);
  Future<Either<UIError, VoidType>> createBid(BidModel bid);
}

@Injectable(as: BidRepositoryImpl)
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
      final query = _firestore.collection(kBidCollection);

      final updateQuery = query.doc(bid.id);
      final doc = await updateQuery.get();
      if (doc.exists) {
        updateQuery.update(bid.toJson());
      } else {
        query.add(bid.toJson());
      }

      return const Right(VoidType());
    } catch (e) {
      return Left(UIError(e.toString()));
    }
  }
}
