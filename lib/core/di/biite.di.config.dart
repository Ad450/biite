// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../api/repositories/auth.repository.dart' as _i7;
import '../../api/repositories/bid.repository.dart' as _i9;
import '../../api/repositories/chat.repository.dart' as _i10;
import '../../api/repositories/project.repository.dart' as _i5;
import '../../api/repositories/user.repository.dart' as _i4;
import '../../api/storage/hive.storage.dart' as _i3;
import '../../features/feed/state/feed.bloc.dart' as _i11;

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
    gh.lazySingleton<_i3.HiveStore>(() => _i3.HiveStore());
    gh.lazySingleton<_i4.UserRepository>(() => _i4.UserRepositoryImpl());
    gh.lazySingleton<_i5.ProjectRepository>(() => _i5.ProjectRepostoryImpl(
          gh<_i6.FirebaseFirestore>(),
          gh<_i3.HiveStore>(),
        ));
    gh.factory<_i7.AuthRepository>(() => _i7.AuthRepositoryImpl(
          gh<_i8.FirebaseAuth>(),
          gh<_i3.HiveStore>(),
          gh<_i6.FirebaseFirestore>(),
        ));
    gh.lazySingleton<_i9.BidRepository>(() => _i9.BidRepositoryImpl(
          gh<_i6.FirebaseFirestore>(),
          gh<_i3.HiveStore>(),
        ));
    gh.lazySingleton<_i10.ChatRepository>(() => _i10.ChatRepositoryImpl(
          gh<_i6.FirebaseFirestore>(),
          gh<_i3.HiveStore>(),
        ));
    gh.lazySingleton<_i11.FeedBloc>(
        () => _i11.FeedBloc(gh<_i5.ProjectRepository>()));
    return this;
  }
}
