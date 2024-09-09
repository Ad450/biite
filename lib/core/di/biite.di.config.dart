// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../api/repositories/auth.repository.dart' as _i10;
import '../../api/repositories/bid.repository.dart' as _i11;
import '../../api/repositories/chat.repository.dart' as _i12;
import '../../api/repositories/project.repository.dart' as _i9;
import '../../api/repositories/user.repository.dart' as _i8;
import '../../api/storage/cloud.storage.dart' as _i7;
import '../../api/storage/hive.storage.dart' as _i6;
import '../../features/feed/state/feed.bloc.dart' as _i13;
import 'biite.di.dart' as _i14;

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
    final firebaseModule = _$FirebaseModule();
    gh.lazySingleton<_i3.FirebaseAuth>(() => firebaseModule.firebaseAuth);
    gh.lazySingleton<_i4.FirebaseStorage>(() => firebaseModule.firebaseStorage);
    gh.lazySingleton<_i5.FirebaseFirestore>(
        () => firebaseModule.firebaseFirestore);
    gh.lazySingleton<_i6.HiveStore>(() => _i6.HiveStore());
    gh.lazySingleton<_i7.CloudStorage>(() => _i7.CloudStorageImpl(
          gh<_i3.FirebaseAuth>(),
          gh<_i4.FirebaseStorage>(),
        ));
    gh.lazySingleton<_i8.UserRepository>(() => _i8.UserRepositoryImpl());
    gh.lazySingleton<_i9.ProjectRepository>(() => _i9.ProjectRepostoryImpl(
          gh<_i5.FirebaseFirestore>(),
          gh<_i6.HiveStore>(),
          gh<_i7.CloudStorage>(),
        ));
    gh.factory<_i10.AuthRepository>(() => _i10.AuthRepositoryImpl(
          gh<_i6.HiveStore>(),
          gh<_i5.FirebaseFirestore>(),
          gh<_i3.FirebaseAuth>(),
        ));
    gh.lazySingleton<_i11.BidRepository>(() => _i11.BidRepositoryImpl(
          gh<_i5.FirebaseFirestore>(),
          gh<_i6.HiveStore>(),
        ));
    gh.lazySingleton<_i12.ChatRepository>(() => _i12.ChatRepositoryImpl(
          gh<_i5.FirebaseFirestore>(),
          gh<_i6.HiveStore>(),
        ));
    gh.lazySingleton<_i13.FeedBloc>(
        () => _i13.FeedBloc(gh<_i9.ProjectRepository>()));
    return this;
  }
}

class _$FirebaseModule extends _i14.FirebaseModule {}
