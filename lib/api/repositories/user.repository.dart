import 'package:injectable/injectable.dart';

abstract class UserRepository {
  Future<String?> getUserId();
}

@LazySingleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  @override
  Future<String?> getUserId() {
    // TODO: implement getUserId
    throw UnimplementedError();
  }
}
