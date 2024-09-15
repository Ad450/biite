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

import '../../api/repositories/auth.repository.dart' as _i20;
import '../../api/repositories/bid.repository.dart' as _i23;
import '../../api/repositories/chat.repository.dart' as _i21;
import '../../api/repositories/message.repository.dart' as _i18;
import '../../api/repositories/project.repository.dart' as _i19;
import '../../api/repositories/user.repository.dart' as _i16;
import '../../api/storage/cloud.storage.dart' as _i14;
import '../../api/storage/hive.storage.dart' as _i10;
import '../../features/auth/state/auth.bloc.dart' as _i24;
import '../../features/auth/state/login.form.bloc.dart' as _i15;
import '../../features/auth/state/signup.form.dart' as _i22;
import '../../features/dashboard/bloc/create.project.form.bloc.dart' as _i13;
import '../../features/dashboard/bloc/dasboard.bloc.dart' as _i9;
import '../../features/feed/state/feed.bloc.dart' as _i25;
import '../presentation/state/compensation.field.bloc.dart' as _i12;
import '../presentation/state/confirm.password.bloc.dart' as _i17;
import '../presentation/state/description.field.bloc.dart' as _i11;
import '../presentation/state/email.field.bloc.dart' as _i6;
import '../presentation/state/name.field.bloc.dart' as _i8;
import '../presentation/state/password.field.bloc.dart' as _i7;
import 'biite.di.dart' as _i26;

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
    gh.lazySingleton<_i6.EmailFieldBloc>(() => _i6.EmailFieldBloc());
    gh.lazySingleton<_i7.PasswordFieldBloc>(() => _i7.PasswordFieldBloc());
    gh.lazySingleton<_i8.NameFieldBloc>(() => _i8.NameFieldBloc());
    gh.lazySingleton<_i9.DasboardBloc>(() => _i9.DasboardBloc());
    gh.lazySingleton<_i10.HiveStore>(() => _i10.HiveStore());
    gh.lazySingleton<_i11.DescriptionFieldBloc>(
        () => _i11.DescriptionFieldBloc());
    gh.lazySingleton<_i12.CompensationFieldBloc>(
        () => _i12.CompensationFieldBloc());
    gh.lazySingleton<_i13.CreateProjectFormBloc>(
        () => _i13.CreateProjectFormBloc(
              gh<_i12.CompensationFieldBloc>(),
              gh<_i11.DescriptionFieldBloc>(),
            ));
    gh.lazySingleton<_i14.CloudStorage>(() => _i14.CloudStorageImpl(
          gh<_i3.FirebaseAuth>(),
          gh<_i4.FirebaseStorage>(),
        ));
    gh.lazySingleton<_i15.LoginFormBloc>(() => _i15.LoginFormBloc(
          gh<_i6.EmailFieldBloc>(),
          gh<_i7.PasswordFieldBloc>(),
        ));
    gh.lazySingleton<_i16.UserRepository>(() => _i16.UserRepositoryImpl());
    gh.lazySingleton<_i17.ConfirmPasswordFieldBloc>(
        () => _i17.ConfirmPasswordFieldBloc(gh<_i7.PasswordFieldBloc>()));
    gh.lazySingleton<_i18.MessageRepository>(() => _i18.MessageRepositoryImpl(
          gh<_i5.FirebaseFirestore>(),
          gh<_i10.HiveStore>(),
        ));
    gh.lazySingleton<_i19.ProjectRepository>(() => _i19.ProjectRepostoryImpl(
          gh<_i5.FirebaseFirestore>(),
          gh<_i10.HiveStore>(),
          gh<_i14.CloudStorage>(),
        ));
    gh.factory<_i20.AuthRepository>(() => _i20.AuthRepositoryImpl(
          gh<_i10.HiveStore>(),
          gh<_i5.FirebaseFirestore>(),
          gh<_i3.FirebaseAuth>(),
        ));
    gh.lazySingleton<_i21.ChatRepository>(() => _i21.ChatRepositoryImpl(
          gh<_i5.FirebaseFirestore>(),
          gh<_i10.HiveStore>(),
          gh<_i18.MessageRepository>(),
        ));
    gh.lazySingleton<_i22.SignupFormBloc>(() => _i22.SignupFormBloc(
          gh<_i6.EmailFieldBloc>(),
          gh<_i7.PasswordFieldBloc>(),
          gh<_i17.ConfirmPasswordFieldBloc>(),
          gh<_i8.NameFieldBloc>(),
        ));
    gh.lazySingleton<_i23.BidRepository>(() => _i23.BidRepositoryImpl(
          gh<_i5.FirebaseFirestore>(),
          gh<_i10.HiveStore>(),
        ));
    gh.lazySingleton<_i24.AuthBloc>(() => _i24.AuthBloc(
          gh<_i20.AuthRepository>(),
          gh<_i15.LoginFormBloc>(),
          gh<_i22.SignupFormBloc>(),
        ));
    gh.lazySingleton<_i25.FeedBloc>(() => _i25.FeedBloc(
          gh<_i19.ProjectRepository>(),
          gh<_i23.BidRepository>(),
        ));
    return this;
  }
}

class _$FirebaseModule extends _i26.FirebaseModule {}
