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
import 'package:flutter/material.dart' as _i13;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../api/repositories/auth.repository.dart' as _i22;
import '../../api/repositories/bid.repository.dart' as _i24;
import '../../api/repositories/chat.repository.dart' as _i23;
import '../../api/repositories/message.repository.dart' as _i19;
import '../../api/repositories/project.repository.dart' as _i20;
import '../../api/repositories/user.repository.dart' as _i17;
import '../../api/storage/cloud.storage.dart' as _i16;
import '../../api/storage/hive.storage.dart' as _i9;
import '../../biite.dart' as _i12;
import '../../features/auth/state/auth.bloc.dart' as _i28;
import '../../features/auth/state/login.form.bloc.dart' as _i32;
import '../../features/auth/state/signup.form.bloc.dart' as _i33;
import '../../features/dashboard/bloc/active.projects.bloc.dart' as _i26;
import '../../features/dashboard/bloc/create.project.form.bloc.dart' as _i31;
import '../../features/dashboard/bloc/created.projects.bloc.dart' as _i25;
import '../../features/dashboard/bloc/file.bloc.dart' as _i8;
import '../../features/dashboard/bloc/project.bloc.dart' as _i21;
import '../../features/dashboard/bloc/tags.bloc.dart' as _i15;
import '../../features/feed/state/bid.bloc.dart' as _i30;
import '../../features/search/state/fetch.projects.bloc.dart' as _i27;
import '../../features/search/state/make.proposition.bloc.dart' as _i29;
import '../presentation/state/compensation.field.bloc.dart' as _i10;
import '../presentation/state/confirm.password.bloc.dart' as _i18;
import '../presentation/state/description.field.bloc.dart' as _i11;
import '../presentation/state/email.field.bloc.dart' as _i14;
import '../presentation/state/name.field.bloc.dart' as _i7;
import '../presentation/state/password.field.bloc.dart' as _i6;
import 'biite.di.dart' as _i34;

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
    gh.lazySingleton<_i6.PasswordFieldBloc>(() => _i6.PasswordFieldBloc());
    gh.lazySingleton<_i7.NameFieldBloc>(() => _i7.NameFieldBloc());
    gh.lazySingleton<_i8.FileBloc>(() => _i8.FileBloc());
    gh.lazySingleton<_i9.HiveStore>(() => _i9.HiveStore());
    gh.lazySingleton<_i10.CompensationFieldBloc>(
      () => firebaseModule.bidCompensationFieldBloc,
      instanceName: 'bid',
    );
    gh.lazySingleton<_i11.DescriptionFieldBloc>(
      () => firebaseModule.bidDescriptionFieldBloc,
      instanceName: 'bid',
    );
    gh.lazySingleton<_i12.Biite>(() => _i12.Biite(key: gh<_i13.Key>()));
    gh.singleton<_i14.EmailFieldBloc>(
      () => firebaseModule.loginEmailFieldBloc,
      instanceName: 'login',
    );
    gh.singleton<_i6.PasswordFieldBloc>(
      () => firebaseModule.loginPasswordFieldBloc,
      instanceName: 'login',
    );
    gh.singleton<_i7.NameFieldBloc>(
      () => firebaseModule.nameFieldBloc,
      instanceName: 'createProject',
    );
    gh.lazySingleton<_i10.CompensationFieldBloc>(
      () => firebaseModule.compensationFieldBloc,
      instanceName: 'createProject',
    );
    gh.lazySingleton<_i11.DescriptionFieldBloc>(
      () => firebaseModule.descriptionFieldBloc,
      instanceName: 'createProject',
    );
    gh.lazySingleton<_i15.TagsBloc>(
      () => firebaseModule.tagsBloc,
      instanceName: 'createProject',
    );
    gh.lazySingleton<_i16.CloudStorage>(
        () => _i16.CloudStorageImpl(gh<_i4.FirebaseStorage>()));
    gh.lazySingleton<_i17.UserRepository>(() => _i17.UserRepositoryImpl());
    gh.lazySingleton<_i7.NameFieldBloc>(
      () => firebaseModule.searchField,
      instanceName: 'search',
    );
    gh.lazySingleton<_i18.ConfirmPasswordFieldBloc>(
        () => _i18.ConfirmPasswordFieldBloc(gh<_i6.PasswordFieldBloc>()));
    gh.singleton<_i14.EmailFieldBloc>(
      () => firebaseModule.signupEmailFieldBloc,
      instanceName: 'signup',
    );
    gh.singleton<_i7.NameFieldBloc>(
      () => firebaseModule.signupNameFieldBloc,
      instanceName: 'signup',
    );
    gh.singleton<_i6.PasswordFieldBloc>(
      () => firebaseModule.signupPasswordFieldBloc,
      instanceName: 'signup',
    );
    gh.lazySingleton<_i19.MessageRepository>(() => _i19.MessageRepositoryImpl(
          gh<_i5.FirebaseFirestore>(),
          gh<_i9.HiveStore>(),
        ));
    gh.lazySingleton<_i20.ProjectRepository>(() => _i20.ProjectRepostoryImpl(
          gh<_i5.FirebaseFirestore>(),
          gh<_i9.HiveStore>(),
          gh<_i16.CloudStorage>(),
        ));
    gh.lazySingleton<_i21.ProjectBloc>(() => _i21.ProjectBloc(
          gh<_i20.ProjectRepository>(),
          gh<_i10.CompensationFieldBloc>(instanceName: 'createProject'),
          gh<_i11.DescriptionFieldBloc>(instanceName: 'createProject'),
          gh<_i7.NameFieldBloc>(instanceName: 'createProject'),
          gh<_i15.TagsBloc>(instanceName: 'createProject'),
          gh<_i8.FileBloc>(),
        ));
    gh.factory<_i22.AuthRepository>(() => _i22.AuthRepositoryImpl(
          gh<_i9.HiveStore>(),
          gh<_i5.FirebaseFirestore>(),
          gh<_i3.FirebaseAuth>(),
        ));
    gh.lazySingleton<_i23.ChatRepository>(() => _i23.ChatRepositoryImpl(
          gh<_i5.FirebaseFirestore>(),
          gh<_i9.HiveStore>(),
          gh<_i19.MessageRepository>(),
        ));
    gh.lazySingleton<_i24.BidRepository>(() => _i24.BidRepositoryImpl(
          gh<_i5.FirebaseFirestore>(),
          gh<_i9.HiveStore>(),
        ));
    gh.lazySingleton<_i25.CreatedProjectBloc>(
        () => _i25.CreatedProjectBloc(gh<_i20.ProjectRepository>()));
    gh.lazySingleton<_i26.ActiveProjectsBloc>(
        () => _i26.ActiveProjectsBloc(gh<_i20.ProjectRepository>()));
    gh.lazySingleton<_i27.FetchProjectsBloc>(() => _i27.FetchProjectsBloc(
          gh<_i7.NameFieldBloc>(instanceName: 'search'),
          gh<_i20.ProjectRepository>(),
        ));
    gh.lazySingleton<_i28.AuthBloc>(() => _i28.AuthBloc(
          gh<_i22.AuthRepository>(),
          gh<_i14.EmailFieldBloc>(instanceName: 'signup'),
          gh<_i7.NameFieldBloc>(instanceName: 'signup'),
          gh<_i14.EmailFieldBloc>(instanceName: 'login'),
          gh<_i6.PasswordFieldBloc>(instanceName: 'login'),
          gh<_i18.ConfirmPasswordFieldBloc>(),
        ));
    gh.lazySingleton<_i29.PropositionBloc>(() => _i29.PropositionBloc(
          gh<_i10.CompensationFieldBloc>(instanceName: 'bid'),
          gh<_i11.DescriptionFieldBloc>(instanceName: 'bid'),
          gh<_i24.BidRepository>(),
        ));
    gh.lazySingleton<_i30.BidBloc>(
        () => _i30.BidBloc(gh<_i24.BidRepository>()));
    gh.lazySingleton<_i31.CreateProjectFormBloc>(
        () => _i31.CreateProjectFormBloc(
              gh<_i10.CompensationFieldBloc>(instanceName: 'createProject'),
              gh<_i11.DescriptionFieldBloc>(instanceName: 'createProject'),
              gh<_i7.NameFieldBloc>(instanceName: 'createProject'),
              gh<_i21.ProjectBloc>(),
            ));
    gh.lazySingleton<_i32.LoginFormBloc>(() => _i32.LoginFormBloc(
          gh<_i14.EmailFieldBloc>(instanceName: 'login'),
          gh<_i6.PasswordFieldBloc>(instanceName: 'login'),
          gh<_i28.AuthBloc>(),
        ));
    gh.lazySingleton<_i33.SignupFormBloc>(() => _i33.SignupFormBloc(
          gh<_i14.EmailFieldBloc>(instanceName: 'signup'),
          gh<_i6.PasswordFieldBloc>(instanceName: 'signup'),
          gh<_i18.ConfirmPasswordFieldBloc>(),
          gh<_i7.NameFieldBloc>(),
          gh<_i28.AuthBloc>(),
        ));
    return this;
  }
}

class _$FirebaseModule extends _i34.FirebaseModule {}
