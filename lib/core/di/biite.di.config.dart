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

import '../../api/repositories/auth.repository.dart' as _i16;
import '../../api/repositories/bid.repository.dart' as _i19;
import '../../api/repositories/chat.repository.dart' as _i17;
import '../../api/repositories/message.repository.dart' as _i14;
import '../../api/repositories/project.repository.dart' as _i15;
import '../../api/repositories/user.repository.dart' as _i13;
import '../../api/storage/cloud.storage.dart' as _i11;
import '../../api/storage/hive.storage.dart' as _i6;
import '../../features/auth/state/login.form.bloc.dart' as _i12;
import '../../features/auth/state/signup.form.dart' as _i18;
import '../../features/feed/state/feed.bloc.dart' as _i20;
import '../presentation/state/confirm.password.bloc.dart' as _i10;
import '../presentation/state/email.field.bloc.dart' as _i7;
import '../presentation/state/name.field.bloc.dart' as _i9;
import '../presentation/state/password.field.bloc.dart' as _i8;
import 'biite.di.dart' as _i21;

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
    gh.lazySingleton<_i7.EmailFieldBloc>(() => _i7.EmailFieldBloc());
    gh.lazySingleton<_i8.PasswordFieldBloc>(() => _i8.PasswordFieldBloc());
    gh.lazySingleton<_i9.NameFieldBloc>(() => _i9.NameFieldBloc());
    gh.lazySingleton<_i10.ConfirmPasswordFieldBloc>(
        () => _i10.ConfirmPasswordFieldBloc());
    gh.lazySingleton<_i11.CloudStorage>(() => _i11.CloudStorageImpl(
          gh<_i3.FirebaseAuth>(),
          gh<_i4.FirebaseStorage>(),
        ));
    gh.lazySingleton<_i12.LoginFormBloc>(() => _i12.LoginFormBloc(
          gh<_i7.EmailFieldBloc>(),
          gh<_i8.PasswordFieldBloc>(),
        ));
    gh.lazySingleton<_i13.UserRepository>(() => _i13.UserRepositoryImpl());
    gh.lazySingleton<_i14.MessageRepository>(() => _i14.MessageRepositoryImpl(
          gh<_i5.FirebaseFirestore>(),
          gh<_i6.HiveStore>(),
        ));
    gh.lazySingleton<_i15.ProjectRepository>(() => _i15.ProjectRepostoryImpl(
          gh<_i5.FirebaseFirestore>(),
          gh<_i6.HiveStore>(),
          gh<_i11.CloudStorage>(),
        ));
    gh.factory<_i16.AuthRepository>(() => _i16.AuthRepositoryImpl(
          gh<_i6.HiveStore>(),
          gh<_i5.FirebaseFirestore>(),
          gh<_i3.FirebaseAuth>(),
        ));
    gh.lazySingleton<_i17.ChatRepository>(() => _i17.ChatRepositoryImpl(
          gh<_i5.FirebaseFirestore>(),
          gh<_i6.HiveStore>(),
          gh<_i14.MessageRepository>(),
        ));
    gh.lazySingleton<_i18.SignupFormBloc>(() => _i18.SignupFormBloc(
          gh<_i7.EmailFieldBloc>(),
          gh<_i8.PasswordFieldBloc>(),
          gh<_i10.ConfirmPasswordFieldBloc>(),
          gh<_i9.NameFieldBloc>(),
        ));
    gh.lazySingleton<_i19.BidRepository>(() => _i19.BidRepositoryImpl(
          gh<_i5.FirebaseFirestore>(),
          gh<_i6.HiveStore>(),
        ));
    gh.lazySingleton<_i20.FeedBloc>(() => _i20.FeedBloc(
          gh<_i15.ProjectRepository>(),
          gh<_i19.BidRepository>(),
        ));
    return this;
  }
}

class _$FirebaseModule extends _i21.FirebaseModule {}
