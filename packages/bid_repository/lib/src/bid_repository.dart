import 'package:bid_repository/src/models/bid_model.dart';
import 'package:bid_repository/src/models/create_bid_param.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common_repository/common_repository.dart';
import 'package:configuration/configuration.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:local_storage/local_storage.dart';
import 'package:project_repository/project_repository.dart';

abstract class BidRepository {
  Future<Either<UIError, List<BidModel>>> fetchBidsByProjectId(String projectId);
  Future<Either<UIError, VoidType>> createBid(CreateBidParam param);
  Future<Either<UIError, VoidType>> acceptBid(String bidId, String projectId);
  Future<Either<UIError, List<BidModel>>> fetchReceivedPropositions();
  Future<Either<UIError, List<BidModel>>> fetchSentBids();
}

@Singleton(as: BidRepository)
class BidRepositoryImpl implements BidRepository {
  BidRepositoryImpl()
      : _firestore = commonGetIt.get<FirebaseFirestore>(),
        _hiveStore = localStorageGetit.get<HiveStore>();

  final FirebaseFirestore _firestore;
  final HiveStore _hiveStore;

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
  Future<Either<UIError, VoidType>> createBid(CreateBidParam param) async {
    try {
      final id = await _hiveStore.readItem("id", "id");
      if (id == null) {
        throw Exception("id null at fetch all chats");
      }

      final bidExists = await _firestore
          .collection(kBidCollection)
          .where("ownerId", isEqualTo: id)
          .where("projectId", isEqualTo: param.projectId)
          .get();

      if (bidExists.docs.isNotEmpty) {
        throw Exception(
          "You have a bid for this project, check it out",
        );
      }

      final projectDoc = await _firestore.collection(kProjectCollection).doc(param.projectId).get();

      if (!projectDoc.exists) {
        throw Exception("project not found");
      }
      if (projectDoc.data()?["ownerId"] == id) {
        throw Exception("Can not bid on your own projects");
      }

      if (projectDoc.data()?["status"] == "active") {
        throw Exception("Bidding over for this project");
      }

      final query = _firestore.collection(kBidCollection);

      final bid = BidModel(
        projectId: param.projectId,
        projectOwnerId: ProjectModel.fromJson(projectDoc.data()!).ownerId,
        ownerId: id,
        description: param.description,
        createdAt: DateTime.now(),
        status: "pending",
        rate: param.rate,
        tags: param.tags,
      );

      final updateQuery = query.doc(param.bidId);
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

  @override
  Future<Either<UIError, VoidType>> acceptBid(String bidId, String projectId) async {
    try {
      final bidQuery = _firestore.collection(kBidCollection).doc(bidId);
      final bid = await bidQuery.get();
      final projectQuery = _firestore.collection(kProjectCollection).doc(projectId);
      final project = await projectQuery.get();

      if (!bid.exists) {
        throw Exception("Bid not found");
      }

      if (!project.exists) {
        throw Exception("project not found");
      }

      final id = await _hiveStore.readItem("id", "id");
      if (id == null) {
        throw Exception("id null at fetch all chats");
      }

      if (project["ownerId"] != id) {
        throw Exception("must be owner of project to accept bids");
      }

      if (bid.data()!["status"] == "accepted") {
        throw Exception("Bid accepted already, Check created projects");
      }

      await bidQuery.update({"status": "accepted"});
      await projectQuery.update({"status": "active", "assignedTo": bid.data()!["ownerId"]});

      return const Right(VoidType());
    } catch (e) {
      return Left(UIError(e.toString()));
    }
  }

  @override
  Future<Either<UIError, List<BidModel>>> fetchReceivedPropositions() async {
    try {
      final id = await _hiveStore.readItem("id", "id");
      if (id == null) {
        throw Exception("id null at fetch all chats");
      }

      final query = await _firestore
          .collection(kBidCollection)
          .where("projectOwnerId", isEqualTo: id)
          .where("status", isEqualTo: "pending")
          .get();
      if (query.docs.isEmpty) {
        return const Right(<BidModel>[]);
      }
      final bids = query.docs.map((e) {
        var bid = BidModel.fromJson(e.data());
        bid = bid.copyWith(id: e.id);
        return bid;
      }).toList();

      bids.sort((a, b) => a.createdAt.compareTo(b.createdAt));
      return Right(bids.reversed.toList());
    } catch (e) {
      return Left(UIError(e.toString()));
    }
  }

  @override
  Future<Either<UIError, List<BidModel>>> fetchSentBids() async {
    try {
      final id = await _hiveStore.readItem("id", "id");
      if (id == null) {
        throw Exception("id null at fetch all chats");
      }
      final query = await _firestore.collection(kBidCollection).where("ownerId", isEqualTo: id).get();
      if (query.docs.isEmpty) {
        return const Right([]);
      }

      final bids = query.docs.map((e) {
        final bid = BidModel.fromJson(e.data());
        return bid.copyWith(id: e.id);
      }).toList();

      return Right(bids);
    } catch (e) {
      return Left(UIError(e.toString()));
    }
  }
}
