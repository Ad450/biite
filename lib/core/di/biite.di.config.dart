// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:firebase_messaging/firebase_messaging.dart' as _i892;
import 'package:firebase_storage/firebase_storage.dart' as _i457;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../api/repositories/auth.repository.dart' as _i846;
import '../../api/repositories/bid.repository.dart' as _i613;
import '../../api/repositories/chat.repository.dart' as _i448;
import '../../api/repositories/message.repository.dart' as _i898;
import '../../api/repositories/project.repository.dart' as _i314;
import '../../api/repositories/user.repository.dart' as _i993;
import '../../api/storage/cloud.storage.dart' as _i452;
import '../../api/storage/hive.storage.dart' as _i833;
import '../../features/auth/state/login.bloc.dart' as _i239;
import '../../features/auth/state/login.form.bloc.dart' as _i229;
import '../../features/auth/state/signup.bloc.dart' as _i293;
import '../../features/auth/state/signup.form.bloc.dart' as _i1006;
import '../../features/dashboard/bloc/active.projects.bloc.dart' as _i729;
import '../../features/dashboard/bloc/create.project.form.bloc.dart' as _i10;
import '../../features/dashboard/bloc/created.projects.bloc.dart' as _i73;
import '../../features/dashboard/bloc/fetch.single.project.bloc.dart' as _i962;
import '../../features/dashboard/bloc/file.bloc.dart' as _i112;
import '../../features/dashboard/bloc/project.bloc.dart' as _i772;
import '../../features/dashboard/bloc/tags.bloc.dart' as _i735;
import '../../features/feed/state/accept.bid.bloc.dart' as _i759;
import '../../features/feed/state/bid.bloc.dart' as _i41;
import '../../features/feed/state/fetch.received.bid.bloc.dart' as _i776;
import '../../features/feed/state/sent.bid.bloc.dart' as _i550;
import '../../features/message/state/chats.bloc.dart' as _i330;
import '../../features/message/state/message.bloc.dart' as _i153;
import '../../features/profile/state/fetch.picture.bloc.dart' as _i665;
import '../../features/profile/state/peer.bloc.dart' as _i982;
import '../../features/profile/state/profile.bloc.dart' as _i517;
import '../../features/search/state/fetch.projects.bloc.dart' as _i478;
import '../../features/search/state/fetch.proposition.count.bloc.dart' as _i498;
import '../../features/search/state/fetch.single.project.bloc.dart' as _i847;
import '../../features/search/state/make.proposition.bloc.dart' as _i344;
import '../presentation/state/compensation.field.bloc.dart' as _i240;
import '../presentation/state/confirm.password.bloc.dart' as _i419;
import '../presentation/state/description.field.bloc.dart' as _i920;
import '../presentation/state/email.field.bloc.dart' as _i474;
import '../presentation/state/name.field.bloc.dart' as _i164;
import '../presentation/state/password.field.bloc.dart' as _i1058;
import 'biite.di.dart' as _i630;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseModule = _$FirebaseModule();
    gh.lazySingleton<_i59.FirebaseAuth>(() => firebaseModule.firebaseAuth);
    gh.lazySingleton<_i457.FirebaseStorage>(
        () => firebaseModule.firebaseStorage);
    gh.lazySingleton<_i892.FirebaseMessaging>(
        () => firebaseModule.firebaseMessaging);
    gh.lazySingleton<_i974.FirebaseFirestore>(
        () => firebaseModule.firebaseFirestore);
    gh.lazySingleton<_i1058.PasswordFieldBloc>(
        () => _i1058.PasswordFieldBloc());
    gh.lazySingleton<_i665.FetchPictureBloc>(() => _i665.FetchPictureBloc());
    gh.lazySingleton<_i833.HiveStore>(() => _i833.HiveStore());
    gh.lazySingleton<_i240.CompensationFieldBloc>(
      () => firebaseModule.bidCompensationFieldBloc,
      instanceName: 'bid',
    );
    gh.lazySingleton<_i920.DescriptionFieldBloc>(
      () => firebaseModule.bidDescriptionFieldBloc,
      instanceName: 'bid',
    );
    gh.singleton<_i474.EmailFieldBloc>(
      () => firebaseModule.loginEmailFieldBloc,
      instanceName: 'login',
    );
    gh.singleton<_i1058.PasswordFieldBloc>(
      () => firebaseModule.loginPasswordFieldBloc,
      instanceName: 'login',
    );
    gh.lazySingleton<_i112.FileBloc>(
      () => firebaseModule.sendWorkFileBloc,
      instanceName: 'sendWork',
    );
    gh.singleton<_i1058.PasswordFieldBloc>(
      () => firebaseModule.profilePasswordField,
      instanceName: 'profile',
    );
    gh.lazySingleton<_i164.NameFieldBloc>(
      () => firebaseModule.profileNameField,
      instanceName: 'profile',
    );
    gh.lazySingleton<_i920.DescriptionFieldBloc>(
      () => firebaseModule.profileDescrptionField,
      instanceName: 'profile',
    );
    gh.singleton<_i164.NameFieldBloc>(
      () => firebaseModule.nameFieldBloc,
      instanceName: 'createProject',
    );
    gh.lazySingleton<_i240.CompensationFieldBloc>(
      () => firebaseModule.compensationFieldBloc,
      instanceName: 'createProject',
    );
    gh.lazySingleton<_i920.DescriptionFieldBloc>(
      () => firebaseModule.descriptionFieldBloc,
      instanceName: 'createProject',
    );
    gh.lazySingleton<_i112.FileBloc>(
      () => firebaseModule.createProjectFileBloc,
      instanceName: 'createProject',
    );
    gh.lazySingleton<_i735.TagsBloc>(
      () => firebaseModule.tagsBloc,
      instanceName: 'createProject',
    );
    gh.lazySingleton<_i452.CloudStorage>(
        () => _i452.CloudStorageImpl(gh<_i457.FirebaseStorage>()));
    gh.lazySingleton<_i164.NameFieldBloc>(
      () => firebaseModule.chatField,
      instanceName: 'chat',
    );
    gh.lazySingleton<_i164.NameFieldBloc>(
      () => firebaseModule.searchField,
      instanceName: 'search',
    );
    gh.singleton<_i474.EmailFieldBloc>(
      () => firebaseModule.signupEmailFieldBloc,
      instanceName: 'signup',
    );
    gh.singleton<_i164.NameFieldBloc>(
      () => firebaseModule.signupNameFieldBloc,
      instanceName: 'signup',
    );
    gh.singleton<_i1058.PasswordFieldBloc>(
      () => firebaseModule.signupPasswordFieldBloc,
      instanceName: 'signup',
    );
    gh.lazySingleton<_i898.MessageRepository>(() => _i898.MessageRepositoryImpl(
          gh<_i974.FirebaseFirestore>(),
          gh<_i833.HiveStore>(),
        ));
    gh.lazySingleton<_i314.ProjectRepository>(() => _i314.ProjectRepostoryImpl(
          gh<_i974.FirebaseFirestore>(),
          gh<_i833.HiveStore>(),
          gh<_i452.CloudStorage>(),
        ));
    gh.lazySingleton<_i993.UserRepository>(() => _i993.UserRepositoryImpl(
          gh<_i974.FirebaseFirestore>(),
          gh<_i833.HiveStore>(),
          gh<_i452.CloudStorage>(),
        ));
    gh.lazySingleton<_i517.ProfileBloc>(() => _i517.ProfileBloc(
          gh<_i920.DescriptionFieldBloc>(instanceName: 'profile'),
          gh<_i164.NameFieldBloc>(instanceName: 'profile'),
          gh<_i665.FetchPictureBloc>(),
          gh<_i993.UserRepository>(),
        ));
    gh.factory<_i982.PeerBloc>(
        () => _i982.PeerBloc(gh<_i993.UserRepository>()));
    gh.factory<_i846.AuthRepository>(() => _i846.AuthRepositoryImpl(
          gh<_i833.HiveStore>(),
          gh<_i974.FirebaseFirestore>(),
          gh<_i59.FirebaseAuth>(),
        ));
    gh.factory<_i153.MessageBloc>(() => _i153.MessageBloc(
          gh<_i898.MessageRepository>(),
          gh<_i164.NameFieldBloc>(instanceName: 'chat'),
        ));
    gh.lazySingleton<_i613.BidRepository>(() => _i613.BidRepositoryImpl(
          gh<_i974.FirebaseFirestore>(),
          gh<_i833.HiveStore>(),
        ));
    gh.lazySingleton<_i448.ChatRepository>(() => _i448.ChatRepositoryImpl(
          gh<_i974.FirebaseFirestore>(),
          gh<_i833.HiveStore>(),
        ));
    gh.lazySingleton<_i847.FetchSingleProjectsBloc>(
        () => _i847.FetchSingleProjectsBloc(gh<_i314.ProjectRepository>()));
    gh.lazySingleton<_i73.CreatedProjectBloc>(
        () => _i73.CreatedProjectBloc(gh<_i314.ProjectRepository>()));
    gh.lazySingleton<_i962.FetchSingleProjectBloc>(
        () => _i962.FetchSingleProjectBloc(gh<_i314.ProjectRepository>()));
    gh.lazySingleton<_i729.ActiveProjectsBloc>(
        () => _i729.ActiveProjectsBloc(gh<_i314.ProjectRepository>()));
    gh.factory<_i498.FetchPropositionCountBloc>(
        () => _i498.FetchPropositionCountBloc(gh<_i314.ProjectRepository>()));
    gh.lazySingleton<_i478.FetchProjectsBloc>(() => _i478.FetchProjectsBloc(
          gh<_i164.NameFieldBloc>(instanceName: 'search'),
          gh<_i314.ProjectRepository>(),
        ));
    gh.singleton<_i419.ConfirmPasswordFieldBloc>(() =>
        _i419.ConfirmPasswordFieldBloc(
            gh<_i1058.PasswordFieldBloc>(instanceName: 'signup')));
    gh.lazySingleton<_i772.ProjectBloc>(() => _i772.ProjectBloc(
          gh<_i314.ProjectRepository>(),
          gh<_i240.CompensationFieldBloc>(instanceName: 'createProject'),
          gh<_i920.DescriptionFieldBloc>(instanceName: 'createProject'),
          gh<_i164.NameFieldBloc>(instanceName: 'createProject'),
          gh<_i735.TagsBloc>(instanceName: 'createProject'),
          gh<_i112.FileBloc>(instanceName: 'createProject'),
        ));
    gh.lazySingleton<_i344.PropositionBloc>(() => _i344.PropositionBloc(
          gh<_i240.CompensationFieldBloc>(instanceName: 'bid'),
          gh<_i920.DescriptionFieldBloc>(instanceName: 'bid'),
          gh<_i613.BidRepository>(),
        ));
    gh.lazySingleton<_i239.LoginBloc>(() => _i239.LoginBloc(
          gh<_i846.AuthRepository>(),
          gh<_i474.EmailFieldBloc>(instanceName: 'login'),
          gh<_i1058.PasswordFieldBloc>(instanceName: 'login'),
        ));
    gh.lazySingleton<_i229.LoginFormBloc>(() => _i229.LoginFormBloc(
          gh<_i474.EmailFieldBloc>(instanceName: 'login'),
          gh<_i1058.PasswordFieldBloc>(instanceName: 'login'),
          gh<_i239.LoginBloc>(),
        ));
    gh.factory<_i550.SentBidBloc>(
        () => _i550.SentBidBloc(gh<_i613.BidRepository>()));
    gh.factory<_i759.AcceptBidBloc>(
        () => _i759.AcceptBidBloc(gh<_i613.BidRepository>()));
    gh.lazySingleton<_i41.BidBloc>(
        () => _i41.BidBloc(gh<_i613.BidRepository>()));
    gh.lazySingleton<_i776.FetchReceivedBidBloc>(
        () => _i776.FetchReceivedBidBloc(gh<_i613.BidRepository>()));
    gh.lazySingleton<_i10.CreateProjectFormBloc>(
        () => _i10.CreateProjectFormBloc(
              gh<_i240.CompensationFieldBloc>(instanceName: 'createProject'),
              gh<_i920.DescriptionFieldBloc>(instanceName: 'createProject'),
              gh<_i164.NameFieldBloc>(instanceName: 'createProject'),
              gh<_i772.ProjectBloc>(),
            ));
    gh.lazySingleton<_i293.SignupBloc>(() => _i293.SignupBloc(
          gh<_i846.AuthRepository>(),
          gh<_i474.EmailFieldBloc>(instanceName: 'signup'),
          gh<_i164.NameFieldBloc>(instanceName: 'signup'),
          gh<_i1058.PasswordFieldBloc>(instanceName: 'signup'),
          gh<_i419.ConfirmPasswordFieldBloc>(),
        ));
    gh.factory<_i330.ChatBloc>(
        () => _i330.ChatBloc(gh<_i448.ChatRepository>()));
    gh.lazySingleton<_i1006.SignupFormBloc>(() => _i1006.SignupFormBloc(
          gh<_i474.EmailFieldBloc>(instanceName: 'signup'),
          gh<_i1058.PasswordFieldBloc>(instanceName: 'signup'),
          gh<_i419.ConfirmPasswordFieldBloc>(),
          gh<_i164.NameFieldBloc>(instanceName: 'signup'),
          gh<_i293.SignupBloc>(),
        ));
    return this;
  }
}

class _$FirebaseModule extends _i630.FirebaseModule {}
