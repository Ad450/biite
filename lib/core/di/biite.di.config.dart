// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../api/repositories/auth.repository.dart' as _i4;
import '../../api/repositories/bid.repository.dart' as _i6;
import '../../api/repositories/chat.repository.dart' as _i8;
import '../../api/repositories/project.repository.dart' as _i9;
import '../../api/repositories/user.repository.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.UserRepository>(() => _i3.UserRepositoryImpl());
    gh.factory<_i4.AuthRepository>(
        () => _i4.AuthRepositoryImpl(gh<_i5.FirebaseAuth>()));
    gh.lazySingleton<_i6.BidRepository>(
        () => _i6.BidRepositoryImpl(gh<_i7.FirebaseFirestore>()));
    gh.lazySingleton<_i8.ChatRepository>(
        () => _i8.ChatRepositoryImpl(gh<_i7.FirebaseFirestore>()));
    gh.lazySingleton<_i9.ProjectRepository>(
        () => _i9.ProjectRepostoryImpl(gh<_i7.FirebaseFirestore>()));
    return this;
  }
}
