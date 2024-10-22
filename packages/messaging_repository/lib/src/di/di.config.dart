// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:cloud_storage/cloud_storage.dart' as _i730;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:local_storage/local_storage.dart' as _i486;

import 'di.dart' as _i913;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initializeMessagingRepoDeps({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final modules = _$Modules();
    gh.lazySingleton<_i59.FirebaseAuth>(() => modules.firebaseAuth);
    gh.lazySingleton<_i974.FirebaseFirestore>(() => modules.firebaseFirestore);
    gh.lazySingleton<_i486.HiveStore>(() => modules.hiveStore);
    gh.lazySingleton<_i730.CloudStorage>(() => modules.cloudStorage);
    return this;
  }
}

class _$Modules extends _i913.Modules {}
