import 'package:authentication_repository/src/models/param.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common_repository/common_repository.dart';
import 'package:configuration/configuration.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:local_storage/local_storage.dart';

abstract class AuthenticationRepository {
  Future<Either<UIError, VoidType>> signup(SignupParam signupParam);
  Future<Either<UIError, VoidType>> signin(SigninParam signin);
  Future<bool> isExistingUser();
  Future<Either<UIError, VoidType>> signout();
}

@LazySingleton(as: AuthenticationRepository)
class AuthRepositoryImpl implements AuthenticationRepository {
  AuthRepositoryImpl(this._hiveStore, this._firestore, this._firebaseAuth);

  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;

  final HiveStore _hiveStore;

  @override
  Future<Either<UIError, VoidType>> signin(SigninParam signin) async {
    try {
      final credential = await _firebaseAuth.signInWithEmailAndPassword(
        email: signin.email,
        password: signin.password,
      );

      if (credential.user != null) {
        if (!credential.user!.emailVerified) {
          await credential.user!.sendEmailVerification();
          throw Exception("Please verify email to continue ");
        }

        final query = await _firestore
            .collection(kUserCollection)
            .where(
              "uid",
              isEqualTo: credential.user!.uid,
            )
            .get();

        if (query.docs.isEmpty) {
          throw Exception("user document not found");
        }

        await _hiveStore.saveItem(query.docs.first.id, "id", key: "id");
        return const Right(VoidType());
      }
      throw Exception("signin failed");
    } on FirebaseAuthException catch (e) {
      return Left(UIError(e.code));
    } catch (e) {
      return Left(UIError(e.toString()));
    }
  }

  @override
  Future<Either<UIError, VoidType>> signup(SignupParam signupParam) async {
    try {
      final credential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: signupParam.email,
        password: signupParam.password,
      );

      if (credential.user != null) {
        // add new user
        try {
          await credential.user!.sendEmailVerification();
        } catch (e) {
          await credential.user!.delete();
          throw Exception("Email verification failed");
        }

        await _addUser(signupParam.name, signupParam.email, credential.user!.uid);
        return const Right(VoidType());
      }
      return throw Exception("sign up failed");
    } on FirebaseAuthException catch (e) {
      return Left(UIError(e.code));
    } catch (e) {
      return Left(UIError(e.toString()));
    }
  }

  @override
  Future<bool> isExistingUser() async {
    try {
      final id = await _hiveStore.readItem("id", "id");
      if (id == null) {
        return false;
      }
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<void> _addUser(String name, String email, String uid) async {
    final user = UserModel(name: name, email: email, uid: uid);
    try {
      final doc = await _firestore.collection(kUserCollection).add(user.toJson());
      await _firestore.collection(kUserCollection).doc(doc.id).update({
        "id": doc.id,
      });
      await _hiveStore.saveItem(doc.id, "id", key: "id");
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Either<UIError, VoidType>> signout() async {
    try {
      final id = await _hiveStore.readItem("id", "id");
      if (id == null) {
        throw Exception("id null at fetch all chats");
      }

      await _hiveStore.deleteItem("id", "id");
      await _firebaseAuth.signOut();

      return const Right(VoidType());
    } catch (e) {
      return Left(UIError(e.toString()));
    }
  }
}
