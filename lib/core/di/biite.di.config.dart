// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_messaging/firebase_messaging.dart' as _i5;
import 'package:firebase_storage/firebase_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../api/repositories/auth.repository.dart' as _i22;
import '../../api/repositories/bid.repository.dart' as _i24;
import '../../api/repositories/chat.repository.dart' as _i25;
import '../../api/repositories/message.repository.dart' as _i17;
import '../../api/repositories/project.repository.dart' as _i18;
import '../../api/repositories/user.repository.dart' as _i19;
import '../../api/storage/cloud.storage.dart' as _i16;
import '../../api/storage/hive.storage.dart' as _i9;
import '../../features/auth/state/login.bloc.dart' as _i35;
import '../../features/auth/state/login.form.bloc.dart' as _i36;
import '../../features/auth/state/signup.bloc.dart' as _i42;
import '../../features/auth/state/signup.form.bloc.dart' as _i44;
import '../../features/dashboard/bloc/active.projects.bloc.dart' as _i29;
import '../../features/dashboard/bloc/create.project.form.bloc.dart' as _i41;
import '../../features/dashboard/bloc/created.projects.bloc.dart' as _i27;
import '../../features/dashboard/bloc/fetch.single.project.bloc.dart' as _i28;
import '../../features/dashboard/bloc/file.bloc.dart' as _i13;
import '../../features/dashboard/bloc/project.bloc.dart' as _i33;
import '../../features/dashboard/bloc/tags.bloc.dart' as _i15;
import '../../features/feed/state/accept.bid.bloc.dart' as _i38;
import '../../features/feed/state/bid.bloc.dart' as _i39;
import '../../features/feed/state/fetch.received.bid.bloc.dart' as _i40;
import '../../features/feed/state/sent.bid.bloc.dart' as _i37;
import '../../features/message/state/chats.bloc.dart' as _i43;
import '../../features/message/state/message.bloc.dart' as _i23;
import '../../features/profile/state/fetch.picture.bloc.dart' as _i8;
import '../../features/profile/state/peer.bloc.dart' as _i21;
import '../../features/profile/state/profile.bloc.dart' as _i20;
import '../../features/search/state/fetch.projects.bloc.dart' as _i31;
import '../../features/search/state/fetch.proposition.count.bloc.dart' as _i30;
import '../../features/search/state/fetch.single.project.bloc.dart' as _i26;
import '../../features/search/state/make.proposition.bloc.dart' as _i34;
import '../presentation/state/compensation.field.bloc.dart' as _i10;
import '../presentation/state/confirm.password.bloc.dart' as _i32;
import '../presentation/state/description.field.bloc.dart' as _i11;
import '../presentation/state/email.field.bloc.dart' as _i12;
import '../presentation/state/name.field.bloc.dart' as _i14;
import '../presentation/state/password.field.bloc.dart' as _i7;
import 'biite.di.dart' as _i45;

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
    gh.lazySingleton<_i5.FirebaseMessaging>(
        () => firebaseModule.firebaseMessaging);
    gh.lazySingleton<_i6.FirebaseFirestore>(
        () => firebaseModule.firebaseFirestore);
    gh.lazySingleton<_i7.PasswordFieldBloc>(() => _i7.PasswordFieldBloc());
    gh.lazySingleton<_i8.FetchPictureBloc>(() => _i8.FetchPictureBloc());
    gh.lazySingleton<_i9.HiveStore>(() => _i9.HiveStore());
    gh.lazySingleton<_i10.CompensationFieldBloc>(
      () => firebaseModule.bidCompensationFieldBloc,
      instanceName: 'bid',
    );
    gh.lazySingleton<_i11.DescriptionFieldBloc>(
      () => firebaseModule.bidDescriptionFieldBloc,
      instanceName: 'bid',
    );
    gh.singleton<_i12.EmailFieldBloc>(
      () => firebaseModule.loginEmailFieldBloc,
      instanceName: 'login',
    );
    gh.singleton<_i7.PasswordFieldBloc>(
      () => firebaseModule.loginPasswordFieldBloc,
      instanceName: 'login',
    );
    gh.lazySingleton<_i13.FileBloc>(
      () => firebaseModule.sendWorkFileBloc,
      instanceName: 'sendWork',
    );
    gh.singleton<_i7.PasswordFieldBloc>(
      () => firebaseModule.profilePasswordField,
      instanceName: 'profile',
    );
    gh.lazySingleton<_i14.NameFieldBloc>(
      () => firebaseModule.profileNameField,
      instanceName: 'profile',
    );
    gh.lazySingleton<_i11.DescriptionFieldBloc>(
      () => firebaseModule.profileDescrptionField,
      instanceName: 'profile',
    );
    gh.singleton<_i14.NameFieldBloc>(
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
    gh.lazySingleton<_i13.FileBloc>(
      () => firebaseModule.createProjectFileBloc,
      instanceName: 'createProject',
    );
    gh.lazySingleton<_i15.TagsBloc>(
      () => firebaseModule.tagsBloc,
      instanceName: 'createProject',
    );
    gh.lazySingleton<_i16.CloudStorage>(
        () => _i16.CloudStorageImpl(gh<_i4.FirebaseStorage>()));
    gh.lazySingleton<_i14.NameFieldBloc>(
      () => firebaseModule.chatField,
      instanceName: 'chat',
    );
    gh.lazySingleton<_i14.NameFieldBloc>(
      () => firebaseModule.searchField,
      instanceName: 'search',
    );
    gh.singleton<_i12.EmailFieldBloc>(
      () => firebaseModule.signupEmailFieldBloc,
      instanceName: 'signup',
    );
    gh.singleton<_i14.NameFieldBloc>(
      () => firebaseModule.signupNameFieldBloc,
      instanceName: 'signup',
    );
    gh.singleton<_i7.PasswordFieldBloc>(
      () => firebaseModule.signupPasswordFieldBloc,
      instanceName: 'signup',
    );
    gh.lazySingleton<_i17.MessageRepository>(() => _i17.MessageRepositoryImpl(
          gh<_i6.FirebaseFirestore>(),
          gh<_i9.HiveStore>(),
        ));
    gh.lazySingleton<_i18.ProjectRepository>(() => _i18.ProjectRepostoryImpl(
          gh<_i6.FirebaseFirestore>(),
          gh<_i9.HiveStore>(),
          gh<_i16.CloudStorage>(),
        ));
    gh.lazySingleton<_i19.UserRepository>(() => _i19.UserRepositoryImpl(
          gh<_i6.FirebaseFirestore>(),
          gh<_i9.HiveStore>(),
          gh<_i16.CloudStorage>(),
        ));
    gh.lazySingleton<_i20.ProfileBloc>(() => _i20.ProfileBloc(
          gh<_i11.DescriptionFieldBloc>(instanceName: 'profile'),
          gh<_i14.NameFieldBloc>(instanceName: 'profile'),
          gh<_i8.FetchPictureBloc>(),
          gh<_i19.UserRepository>(),
        ));
    gh.factory<_i21.PeerBloc>(() => _i21.PeerBloc(gh<_i19.UserRepository>()));
    gh.factory<_i22.AuthRepository>(() => _i22.AuthRepositoryImpl(
          gh<_i9.HiveStore>(),
          gh<_i6.FirebaseFirestore>(),
          gh<_i3.FirebaseAuth>(),
        ));
    gh.factory<_i23.MessageBloc>(() => _i23.MessageBloc(
          gh<_i17.MessageRepository>(),
          gh<_i14.NameFieldBloc>(instanceName: 'chat'),
        ));
    gh.lazySingleton<_i24.BidRepository>(() => _i24.BidRepositoryImpl(
          gh<_i6.FirebaseFirestore>(),
          gh<_i9.HiveStore>(),
        ));
    gh.lazySingleton<_i25.ChatRepository>(() => _i25.ChatRepositoryImpl(
          gh<_i6.FirebaseFirestore>(),
          gh<_i9.HiveStore>(),
        ));
    gh.lazySingleton<_i26.FetchSingleProjectsBloc>(
        () => _i26.FetchSingleProjectsBloc(gh<_i18.ProjectRepository>()));
    gh.lazySingleton<_i27.CreatedProjectBloc>(
        () => _i27.CreatedProjectBloc(gh<_i18.ProjectRepository>()));
    gh.lazySingleton<_i28.FetchSingleProjectBloc>(
        () => _i28.FetchSingleProjectBloc(gh<_i18.ProjectRepository>()));
    gh.lazySingleton<_i29.ActiveProjectsBloc>(
        () => _i29.ActiveProjectsBloc(gh<_i18.ProjectRepository>()));
    gh.factory<_i30.FetchPropositionCountBloc>(
        () => _i30.FetchPropositionCountBloc(gh<_i18.ProjectRepository>()));
    gh.lazySingleton<_i31.FetchProjectsBloc>(() => _i31.FetchProjectsBloc(
          gh<_i14.NameFieldBloc>(instanceName: 'search'),
          gh<_i18.ProjectRepository>(),
        ));
    gh.singleton<_i32.ConfirmPasswordFieldBloc>(() =>
        _i32.ConfirmPasswordFieldBloc(
            gh<_i7.PasswordFieldBloc>(instanceName: 'signup')));
    gh.lazySingleton<_i33.ProjectBloc>(() => _i33.ProjectBloc(
          gh<_i18.ProjectRepository>(),
          gh<_i10.CompensationFieldBloc>(instanceName: 'createProject'),
          gh<_i11.DescriptionFieldBloc>(instanceName: 'createProject'),
          gh<_i14.NameFieldBloc>(instanceName: 'createProject'),
          gh<_i15.TagsBloc>(instanceName: 'createProject'),
          gh<_i13.FileBloc>(instanceName: 'createProject'),
        ));
    gh.lazySingleton<_i34.PropositionBloc>(() => _i34.PropositionBloc(
          gh<_i10.CompensationFieldBloc>(instanceName: 'bid'),
          gh<_i11.DescriptionFieldBloc>(instanceName: 'bid'),
          gh<_i24.BidRepository>(),
        ));
    gh.lazySingleton<_i35.LoginBloc>(() => _i35.LoginBloc(
          gh<_i22.AuthRepository>(),
          gh<_i12.EmailFieldBloc>(instanceName: 'login'),
          gh<_i7.PasswordFieldBloc>(instanceName: 'login'),
        ));
    gh.lazySingleton<_i36.LoginFormBloc>(() => _i36.LoginFormBloc(
          gh<_i12.EmailFieldBloc>(instanceName: 'login'),
          gh<_i7.PasswordFieldBloc>(instanceName: 'login'),
          gh<_i35.LoginBloc>(),
        ));
    gh.factory<_i37.SentBidBloc>(
        () => _i37.SentBidBloc(gh<_i24.BidRepository>()));
    gh.factory<_i38.AcceptBidBloc>(
        () => _i38.AcceptBidBloc(gh<_i24.BidRepository>()));
    gh.lazySingleton<_i39.BidBloc>(
        () => _i39.BidBloc(gh<_i24.BidRepository>()));
    gh.lazySingleton<_i40.FetchReceivedBidBloc>(
        () => _i40.FetchReceivedBidBloc(gh<_i24.BidRepository>()));
    gh.lazySingleton<_i41.CreateProjectFormBloc>(
        () => _i41.CreateProjectFormBloc(
              gh<_i10.CompensationFieldBloc>(instanceName: 'createProject'),
              gh<_i11.DescriptionFieldBloc>(instanceName: 'createProject'),
              gh<_i14.NameFieldBloc>(instanceName: 'createProject'),
              gh<_i33.ProjectBloc>(),
            ));
    gh.lazySingleton<_i42.SignupBloc>(() => _i42.SignupBloc(
          gh<_i22.AuthRepository>(),
          gh<_i12.EmailFieldBloc>(instanceName: 'signup'),
          gh<_i14.NameFieldBloc>(instanceName: 'signup'),
          gh<_i7.PasswordFieldBloc>(instanceName: 'signup'),
          gh<_i32.ConfirmPasswordFieldBloc>(),
        ));
    gh.factory<_i43.ChatBloc>(() => _i43.ChatBloc(gh<_i25.ChatRepository>()));
    gh.lazySingleton<_i44.SignupFormBloc>(() => _i44.SignupFormBloc(
          gh<_i12.EmailFieldBloc>(instanceName: 'signup'),
          gh<_i7.PasswordFieldBloc>(instanceName: 'signup'),
          gh<_i32.ConfirmPasswordFieldBloc>(),
          gh<_i14.NameFieldBloc>(instanceName: 'signup'),
          gh<_i42.SignupBloc>(),
        ));
    return this;
  }
}

class _$FirebaseModule extends _i45.FirebaseModule {}
