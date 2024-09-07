import 'package:biite/api/utils/repository.params.dart';
import 'package:biite/api/utils/types.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

abstract class AuthRepository {
  Future<Either<UIError, VoidType>> signup(SignupParam signupParam);
  Future<Either<UIError, VoidType>> signin(SigninParam signin);
}

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._firebaseAuth);

  final FirebaseAuth _firebaseAuth;

  @override
  Future<Either<UIError, VoidType>> signin(SigninParam signin) async {
    try {
      final credential = await _firebaseAuth.signInWithEmailAndPassword(
        email: signin.email,
        password: signin.password,
      );

      if (credential.user != null) {
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
        return const Right(VoidType());
      }
      return throw Exception("sign up failed");
    } on FirebaseAuthException catch (e) {
      return Left(UIError(e.code));
    } catch (e) {
      return Left(UIError(e.toString()));
    }
  }
}
