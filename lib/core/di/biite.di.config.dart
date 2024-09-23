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
import 'package:flutter/material.dart' as _i14;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../api/repositories/auth.repository.dart' as _i24;
import '../../api/repositories/bid.repository.dart' as _i27;
import '../../api/repositories/chat.repository.dart' as _i25;
import '../../api/repositories/message.repository.dart' as _i19;
import '../../api/repositories/project.repository.dart' as _i20;
import '../../api/repositories/user.repository.dart' as _i22;
import '../../api/storage/cloud.storage.dart' as _i17;
import '../../api/storage/hive.storage.dart' as _i10;
import '../../biite.dart' as _i13;
import '../../features/auth/state/auth.bloc.dart' as _i31;
import '../../features/auth/state/login.form.bloc.dart' as _i36;
import '../../features/auth/state/signup.form.bloc.dart' as _i37;
import '../../features/dashboard/bloc/active.projects.bloc.dart' as _i29;
import '../../features/dashboard/bloc/create.project.form.bloc.dart' as _i34;
import '../../features/dashboard/bloc/created.projects.bloc.dart' as _i28;
import '../../features/dashboard/bloc/file.bloc.dart' as _i8;
import '../../features/dashboard/bloc/project.bloc.dart' as _i21;
import '../../features/dashboard/bloc/tags.bloc.dart' as _i16;
import '../../features/feed/state/bid.bloc.dart' as _i33;
import '../../features/message/state/chats.bloc.dart' as _i35;
import '../../features/message/state/message.bloc.dart' as _i26;
import '../../features/profile/state/fetch.picture.bloc.dart' as _i9;
import '../../features/profile/state/profile.bloc.dart' as _i23;
import '../../features/search/state/fetch.projects.bloc.dart' as _i30;
import '../../features/search/state/make.proposition.bloc.dart' as _i32;
import '../presentation/state/compensation.field.bloc.dart' as _i11;
import '../presentation/state/confirm.password.bloc.dart' as _i18;
import '../presentation/state/description.field.bloc.dart' as _i12;
import '../presentation/state/email.field.bloc.dart' as _i15;
import '../presentation/state/name.field.bloc.dart' as _i7;
import '../presentation/state/password.field.bloc.dart' as _i6;
import 'biite.di.dart' as _i38;

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
    gh.lazySingleton<_i9.FetchPictureBloc>(() => _i9.FetchPictureBloc());
    gh.lazySingleton<_i10.HiveStore>(() => _i10.HiveStore());
    gh.lazySingleton<_i11.CompensationFieldBloc>(
      () => firebaseModule.bidCompensationFieldBloc,
      instanceName: 'bid',
    );
    gh.lazySingleton<_i12.DescriptionFieldBloc>(
      () => firebaseModule.bidDescriptionFieldBloc,
      instanceName: 'bid',
    );
    gh.lazySingleton<_i13.Biite>(() => _i13.Biite(key: gh<_i14.Key>()));
    gh.singleton<_i15.EmailFieldBloc>(
      () => firebaseModule.loginEmailFieldBloc,
      instanceName: 'login',
    );
    gh.singleton<_i6.PasswordFieldBloc>(
      () => firebaseModule.loginPasswordFieldBloc,
      instanceName: 'login',
    );
    gh.singleton<_i6.PasswordFieldBloc>(
      () => firebaseModule.profilePasswordField,
      instanceName: 'profile',
    );
    gh.lazySingleton<_i7.NameFieldBloc>(
      () => firebaseModule.profileNameField,
      instanceName: 'profile',
    );
    gh.lazySingleton<_i12.DescriptionFieldBloc>(
      () => firebaseModule.profileDescrptionField,
      instanceName: 'profile',
    );
    gh.singleton<_i7.NameFieldBloc>(
      () => firebaseModule.nameFieldBloc,
      instanceName: 'createProject',
    );
    gh.lazySingleton<_i11.CompensationFieldBloc>(
      () => firebaseModule.compensationFieldBloc,
      instanceName: 'createProject',
    );
    gh.lazySingleton<_i12.DescriptionFieldBloc>(
      () => firebaseModule.descriptionFieldBloc,
      instanceName: 'createProject',
    );
    gh.lazySingleton<_i16.TagsBloc>(
      () => firebaseModule.tagsBloc,
      instanceName: 'createProject',
    );
    gh.lazySingleton<_i17.CloudStorage>(
        () => _i17.CloudStorageImpl(gh<_i4.FirebaseStorage>()));
    gh.lazySingleton<_i7.NameFieldBloc>(
      () => firebaseModule.chatField,
      instanceName: 'chat',
    );
    gh.lazySingleton<_i7.NameFieldBloc>(
      () => firebaseModule.searchField,
      instanceName: 'search',
    );
    gh.lazySingleton<_i18.ConfirmPasswordFieldBloc>(
        () => _i18.ConfirmPasswordFieldBloc(gh<_i6.PasswordFieldBloc>()));
    gh.singleton<_i15.EmailFieldBloc>(
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
          gh<_i10.HiveStore>(),
        ));
    gh.lazySingleton<_i20.ProjectRepository>(() => _i20.ProjectRepostoryImpl(
          gh<_i5.FirebaseFirestore>(),
          gh<_i10.HiveStore>(),
          gh<_i17.CloudStorage>(),
        ));
    gh.lazySingleton<_i21.ProjectBloc>(() => _i21.ProjectBloc(
          gh<_i20.ProjectRepository>(),
          gh<_i11.CompensationFieldBloc>(instanceName: 'createProject'),
          gh<_i12.DescriptionFieldBloc>(instanceName: 'createProject'),
          gh<_i7.NameFieldBloc>(instanceName: 'createProject'),
          gh<_i16.TagsBloc>(instanceName: 'createProject'),
          gh<_i8.FileBloc>(),
        ));
    gh.lazySingleton<_i22.UserRepository>(() => _i22.UserRepositoryImpl(
          gh<_i5.FirebaseFirestore>(),
          gh<_i10.HiveStore>(),
          gh<_i17.CloudStorage>(),
        ));
    gh.lazySingleton<_i23.ProfileBloc>(() => _i23.ProfileBloc(
          gh<_i12.DescriptionFieldBloc>(instanceName: 'profile'),
          gh<_i7.NameFieldBloc>(instanceName: 'profile'),
          gh<_i9.FetchPictureBloc>(),
          gh<_i22.UserRepository>(),
        ));
    gh.factory<_i24.AuthRepository>(() => _i24.AuthRepositoryImpl(
          gh<_i10.HiveStore>(),
          gh<_i5.FirebaseFirestore>(),
          gh<_i3.FirebaseAuth>(),
        ));
    gh.lazySingleton<_i25.ChatRepository>(() => _i25.ChatRepositoryImpl(
          gh<_i5.FirebaseFirestore>(),
          gh<_i10.HiveStore>(),
          gh<_i19.MessageRepository>(),
        ));
    gh.lazySingleton<_i26.MessageBloc>(() => _i26.MessageBloc(
          gh<_i19.MessageRepository>(),
          gh<_i7.NameFieldBloc>(instanceName: 'chat'),
        ));
    gh.lazySingleton<_i27.BidRepository>(() => _i27.BidRepositoryImpl(
          gh<_i5.FirebaseFirestore>(),
          gh<_i10.HiveStore>(),
        ));
    gh.lazySingleton<_i28.CreatedProjectBloc>(
        () => _i28.CreatedProjectBloc(gh<_i20.ProjectRepository>()));
    gh.lazySingleton<_i29.ActiveProjectsBloc>(
        () => _i29.ActiveProjectsBloc(gh<_i20.ProjectRepository>()));
    gh.lazySingleton<_i30.FetchProjectsBloc>(() => _i30.FetchProjectsBloc(
          gh<_i7.NameFieldBloc>(instanceName: 'search'),
          gh<_i20.ProjectRepository>(),
        ));
    gh.lazySingleton<_i31.AuthBloc>(() => _i31.AuthBloc(
          gh<_i24.AuthRepository>(),
          gh<_i15.EmailFieldBloc>(instanceName: 'signup'),
          gh<_i7.NameFieldBloc>(instanceName: 'signup'),
          gh<_i15.EmailFieldBloc>(instanceName: 'login'),
          gh<_i6.PasswordFieldBloc>(instanceName: 'login'),
          gh<_i18.ConfirmPasswordFieldBloc>(),
        ));
    gh.lazySingleton<_i32.PropositionBloc>(() => _i32.PropositionBloc(
          gh<_i11.CompensationFieldBloc>(instanceName: 'bid'),
          gh<_i12.DescriptionFieldBloc>(instanceName: 'bid'),
          gh<_i27.BidRepository>(),
        ));
    gh.lazySingleton<_i33.BidBloc>(
        () => _i33.BidBloc(gh<_i27.BidRepository>()));
    gh.lazySingleton<_i34.CreateProjectFormBloc>(
        () => _i34.CreateProjectFormBloc(
              gh<_i11.CompensationFieldBloc>(instanceName: 'createProject'),
              gh<_i12.DescriptionFieldBloc>(instanceName: 'createProject'),
              gh<_i7.NameFieldBloc>(instanceName: 'createProject'),
              gh<_i21.ProjectBloc>(),
            ));
    gh.lazySingleton<_i35.ChatBloc>(
        () => _i35.ChatBloc(gh<_i25.ChatRepository>()));
    gh.lazySingleton<_i36.LoginFormBloc>(() => _i36.LoginFormBloc(
          gh<_i15.EmailFieldBloc>(instanceName: 'login'),
          gh<_i6.PasswordFieldBloc>(instanceName: 'login'),
          gh<_i31.AuthBloc>(),
        ));
    gh.lazySingleton<_i37.SignupFormBloc>(() => _i37.SignupFormBloc(
          gh<_i15.EmailFieldBloc>(instanceName: 'signup'),
          gh<_i6.PasswordFieldBloc>(instanceName: 'signup'),
          gh<_i18.ConfirmPasswordFieldBloc>(),
          gh<_i7.NameFieldBloc>(),
          gh<_i31.AuthBloc>(),
        ));
    return this;
  }
}

class _$FirebaseModule extends _i38.FirebaseModule {}
