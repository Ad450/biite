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

import '../../api/repositories/auth.repository.dart' as _i19;
import '../../api/repositories/bid.repository.dart' as _i21;
import '../../api/repositories/chat.repository.dart' as _i20;
import '../../api/repositories/message.repository.dart' as _i17;
import '../../api/repositories/project.repository.dart' as _i18;
import '../../api/repositories/user.repository.dart' as _i15;
import '../../api/storage/cloud.storage.dart' as _i14;
import '../../api/storage/hive.storage.dart' as _i11;
import '../../features/auth/state/auth.bloc.dart' as _i25;
import '../../features/auth/state/login.form.bloc.dart' as _i22;
import '../../features/auth/state/signup.form.bloc.dart' as _i23;
import '../../features/dashboard/bloc/create.project.form.bloc.dart' as _i12;
import '../../features/dashboard/bloc/dasboard.bloc.dart' as _i10;
import '../../features/feed/state/feed.bloc.dart' as _i24;
import '../presentation/state/compensation.field.bloc.dart' as _i6;
import '../presentation/state/confirm.password.bloc.dart' as _i16;
import '../presentation/state/description.field.bloc.dart' as _i7;
import '../presentation/state/email.field.bloc.dart' as _i13;
import '../presentation/state/name.field.bloc.dart' as _i9;
import '../presentation/state/password.field.bloc.dart' as _i8;
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
    gh.lazySingleton<_i6.CompensationFieldBloc>(
        () => firebaseModule.compensationFieldBloc);
    gh.lazySingleton<_i7.DescriptionFieldBloc>(
        () => firebaseModule.descriptionFieldBloc);
    gh.lazySingleton<_i8.PasswordFieldBloc>(() => _i8.PasswordFieldBloc());
    gh.lazySingleton<_i9.NameFieldBloc>(() => _i9.NameFieldBloc());
    gh.lazySingleton<_i10.DasboardBloc>(() => _i10.DasboardBloc());
    gh.lazySingleton<_i11.HiveStore>(() => _i11.HiveStore());
    gh.lazySingleton<_i12.CreateProjectFormBloc>(
        () => _i12.CreateProjectFormBloc(
              gh<_i6.CompensationFieldBloc>(),
              gh<_i7.DescriptionFieldBloc>(),
            ));
    gh.singleton<_i13.EmailFieldBloc>(
      () => firebaseModule.loginEmailFieldBloc,
      instanceName: 'login',
    );
    gh.singleton<_i8.PasswordFieldBloc>(
      () => firebaseModule.loginPasswordFieldBloc,
      instanceName: 'login',
    );
    gh.lazySingleton<_i14.CloudStorage>(() => _i14.CloudStorageImpl(
          gh<_i3.FirebaseAuth>(),
          gh<_i4.FirebaseStorage>(),
        ));
    gh.lazySingleton<_i15.UserRepository>(() => _i15.UserRepositoryImpl());
    gh.lazySingleton<_i16.ConfirmPasswordFieldBloc>(
        () => _i16.ConfirmPasswordFieldBloc(gh<_i8.PasswordFieldBloc>()));
    gh.singleton<_i13.EmailFieldBloc>(
      () => firebaseModule.signupEmailFieldBloc,
      instanceName: 'signup',
    );
    gh.singleton<_i8.PasswordFieldBloc>(
      () => firebaseModule.signupPasswordFieldBloc,
      instanceName: 'signup',
    );
    gh.lazySingleton<_i17.MessageRepository>(() => _i17.MessageRepositoryImpl(
          gh<_i5.FirebaseFirestore>(),
          gh<_i11.HiveStore>(),
        ));
    gh.lazySingleton<_i18.ProjectRepository>(() => _i18.ProjectRepostoryImpl(
          gh<_i5.FirebaseFirestore>(),
          gh<_i11.HiveStore>(),
          gh<_i14.CloudStorage>(),
        ));
    gh.factory<_i19.AuthRepository>(() => _i19.AuthRepositoryImpl(
          gh<_i11.HiveStore>(),
          gh<_i5.FirebaseFirestore>(),
          gh<_i3.FirebaseAuth>(),
        ));
    gh.lazySingleton<_i20.ChatRepository>(() => _i20.ChatRepositoryImpl(
          gh<_i5.FirebaseFirestore>(),
          gh<_i11.HiveStore>(),
          gh<_i17.MessageRepository>(),
        ));
    gh.lazySingleton<_i21.BidRepository>(() => _i21.BidRepositoryImpl(
          gh<_i5.FirebaseFirestore>(),
          gh<_i11.HiveStore>(),
        ));
    gh.lazySingleton<_i22.LoginFormBloc>(() => _i22.LoginFormBloc(
          gh<_i13.EmailFieldBloc>(instanceName: 'login'),
          gh<_i8.PasswordFieldBloc>(instanceName: 'login'),
        ));
    gh.lazySingleton<_i23.SignupFormBloc>(() => _i23.SignupFormBloc(
          gh<_i13.EmailFieldBloc>(instanceName: 'signup'),
          gh<_i8.PasswordFieldBloc>(instanceName: 'signup'),
          gh<_i16.ConfirmPasswordFieldBloc>(),
          gh<_i9.NameFieldBloc>(),
        ));
    gh.lazySingleton<_i24.FeedBloc>(() => _i24.FeedBloc(
          gh<_i18.ProjectRepository>(),
          gh<_i21.BidRepository>(),
        ));
    gh.lazySingleton<_i25.AuthBloc>(() => _i25.AuthBloc(
          gh<_i19.AuthRepository>(),
          gh<_i22.LoginFormBloc>(),
          gh<_i23.SignupFormBloc>(),
        ));
    return this;
  }
}

class _$FirebaseModule extends _i26.FirebaseModule {}
