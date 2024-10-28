// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:form_validator/form_validator.dart' as _i865;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../auth/state/login.bloc.dart' as _i81;
import '../auth/state/login.form.bloc.dart' as _i378;
import '../auth/state/signup.bloc.dart' as _i323;
import '../auth/state/signup.form.bloc.dart' as _i713;
import '../dashboard/bloc/active.projects.bloc.dart' as _i618;
import '../dashboard/bloc/create.project.form.bloc.dart' as _i364;
import '../dashboard/bloc/created.projects.bloc.dart' as _i171;
import '../dashboard/bloc/fetch.single.project.bloc.dart' as _i1031;
import '../dashboard/bloc/file.bloc.dart' as _i95;
import '../dashboard/bloc/project.bloc.dart' as _i549;
import '../dashboard/bloc/tags.bloc.dart' as _i62;
import '../feed/state/accept.bid.bloc.dart' as _i52;
import '../feed/state/bid.bloc.dart' as _i181;
import '../feed/state/fetch.received.bid.bloc.dart' as _i1040;
import '../feed/state/sent.bid.bloc.dart' as _i11;
import '../message/state/chats.bloc.dart' as _i45;
import '../message/state/message.bloc.dart' as _i972;
import '../profile/state/fetch.picture.bloc.dart' as _i130;
import '../profile/state/peer.bloc.dart' as _i159;
import '../profile/state/profile.bloc.dart' as _i816;
import '../search/state/fetch.projects.bloc.dart' as _i455;
import '../search/state/fetch.proposition.count.bloc.dart' as _i967;
import '../search/state/fetch.single.project.bloc.dart' as _i982;
import '../search/state/make.proposition.bloc.dart' as _i396;
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
    gh.factory<_i865.ConfirmPasswordFieldBloc>(
        () => firebaseModule.confirmPasswordFieldBloc);
    gh.factory<_i45.ChatBloc>(() => _i45.ChatBloc());
    gh.factory<_i967.FetchPropositionCountBloc>(
        () => _i967.FetchPropositionCountBloc());
    gh.factory<_i159.PeerBloc>(() => _i159.PeerBloc());
    gh.factory<_i11.SentBidBloc>(() => _i11.SentBidBloc());
    gh.factory<_i52.AcceptBidBloc>(() => _i52.AcceptBidBloc());
    gh.lazySingleton<_i982.FetchSingleProjectsBloc>(
        () => _i982.FetchSingleProjectsBloc());
    gh.lazySingleton<_i171.CreatedProjectBloc>(
        () => _i171.CreatedProjectBloc());
    gh.lazySingleton<_i1031.FetchSingleProjectBloc>(
        () => _i1031.FetchSingleProjectBloc());
    gh.lazySingleton<_i618.ActiveProjectsBloc>(
        () => _i618.ActiveProjectsBloc());
    gh.lazySingleton<_i130.FetchPictureBloc>(() => _i130.FetchPictureBloc());
    gh.lazySingleton<_i181.BidBloc>(() => _i181.BidBloc());
    gh.lazySingleton<_i1040.FetchReceivedBidBloc>(
        () => _i1040.FetchReceivedBidBloc());
    gh.lazySingleton<_i865.CompensationFieldBloc>(
      () => firebaseModule.bidCompensationFieldBloc,
      instanceName: 'bid',
    );
    gh.lazySingleton<_i865.DescriptionFieldBloc>(
      () => firebaseModule.bidDescriptionFieldBloc,
      instanceName: 'bid',
    );
    gh.lazySingleton<_i396.PropositionBloc>(() => _i396.PropositionBloc(
          gh<_i865.CompensationFieldBloc>(instanceName: 'bid'),
          gh<_i865.DescriptionFieldBloc>(instanceName: 'bid'),
        ));
    gh.singleton<_i865.EmailFieldBloc>(
      () => firebaseModule.loginEmailFieldBloc,
      instanceName: 'login',
    );
    gh.singleton<_i865.PasswordFieldBloc>(
      () => firebaseModule.loginPasswordFieldBloc,
      instanceName: 'login',
    );
    gh.lazySingleton<_i95.FileBloc>(
      () => firebaseModule.sendWorkFileBloc,
      instanceName: 'sendWork',
    );
    gh.singleton<_i865.PasswordFieldBloc>(
      () => firebaseModule.profilePasswordField,
      instanceName: 'profile',
    );
    gh.lazySingleton<_i865.NameFieldBloc>(
      () => firebaseModule.profileNameField,
      instanceName: 'profile',
    );
    gh.lazySingleton<_i865.DescriptionFieldBloc>(
      () => firebaseModule.profileDescrptionField,
      instanceName: 'profile',
    );
    gh.singleton<_i865.NameFieldBloc>(
      () => firebaseModule.nameFieldBloc,
      instanceName: 'createProject',
    );
    gh.lazySingleton<_i865.CompensationFieldBloc>(
      () => firebaseModule.compensationFieldBloc,
      instanceName: 'createProject',
    );
    gh.lazySingleton<_i865.DescriptionFieldBloc>(
      () => firebaseModule.descriptionFieldBloc,
      instanceName: 'createProject',
    );
    gh.lazySingleton<_i95.FileBloc>(
      () => firebaseModule.createProjectFileBloc,
      instanceName: 'createProject',
    );
    gh.lazySingleton<_i62.TagsBloc>(
      () => firebaseModule.tagsBloc,
      instanceName: 'createProject',
    );
    gh.lazySingleton<_i865.NameFieldBloc>(
      () => firebaseModule.chatField,
      instanceName: 'chat',
    );
    gh.lazySingleton<_i865.NameFieldBloc>(
      () => firebaseModule.searchField,
      instanceName: 'search',
    );
    gh.singleton<_i865.EmailFieldBloc>(
      () => firebaseModule.signupEmailFieldBloc,
      instanceName: 'signup',
    );
    gh.singleton<_i865.NameFieldBloc>(
      () => firebaseModule.signupNameFieldBloc,
      instanceName: 'signup',
    );
    gh.singleton<_i865.PasswordFieldBloc>(
      () => firebaseModule.signupPasswordFieldBloc,
      instanceName: 'signup',
    );
    gh.lazySingleton<_i455.FetchProjectsBloc>(() => _i455.FetchProjectsBloc(
        gh<_i865.NameFieldBloc>(instanceName: 'search')));
    gh.lazySingleton<_i549.ProjectBloc>(() => _i549.ProjectBloc(
          gh<_i865.CompensationFieldBloc>(instanceName: 'createProject'),
          gh<_i865.DescriptionFieldBloc>(instanceName: 'createProject'),
          gh<_i865.NameFieldBloc>(instanceName: 'createProject'),
          gh<_i62.TagsBloc>(instanceName: 'createProject'),
          gh<_i95.FileBloc>(instanceName: 'createProject'),
        ));
    gh.lazySingleton<_i81.LoginBloc>(() => _i81.LoginBloc(
          gh<_i865.EmailFieldBloc>(instanceName: 'login'),
          gh<_i865.PasswordFieldBloc>(instanceName: 'login'),
        ));
    gh.factory<_i972.MessageBloc>(
        () => _i972.MessageBloc(gh<_i865.NameFieldBloc>(instanceName: 'chat')));
    gh.lazySingleton<_i323.SignupBloc>(() => _i323.SignupBloc(
          gh<_i865.EmailFieldBloc>(instanceName: 'signup'),
          gh<_i865.NameFieldBloc>(instanceName: 'signup'),
          gh<_i865.PasswordFieldBloc>(instanceName: 'signup'),
          gh<_i865.ConfirmPasswordFieldBloc>(),
        ));
    gh.lazySingleton<_i816.ProfileBloc>(() => _i816.ProfileBloc(
          gh<_i865.DescriptionFieldBloc>(instanceName: 'profile'),
          gh<_i865.NameFieldBloc>(instanceName: 'profile'),
          gh<_i130.FetchPictureBloc>(),
        ));
    gh.lazySingleton<_i364.CreateProjectFormBloc>(
        () => _i364.CreateProjectFormBloc(
              gh<_i865.CompensationFieldBloc>(instanceName: 'createProject'),
              gh<_i865.DescriptionFieldBloc>(instanceName: 'createProject'),
              gh<_i865.NameFieldBloc>(instanceName: 'createProject'),
              gh<_i549.ProjectBloc>(),
            ));
    gh.lazySingleton<_i378.LoginFormBloc>(() => _i378.LoginFormBloc(
          gh<_i865.EmailFieldBloc>(instanceName: 'login'),
          gh<_i865.PasswordFieldBloc>(instanceName: 'login'),
          gh<_i81.LoginBloc>(),
        ));
    gh.lazySingleton<_i713.SignupFormBloc>(() => _i713.SignupFormBloc(
          gh<_i865.EmailFieldBloc>(instanceName: 'signup'),
          gh<_i865.PasswordFieldBloc>(instanceName: 'signup'),
          gh<_i865.ConfirmPasswordFieldBloc>(),
          gh<_i865.NameFieldBloc>(instanceName: 'signup'),
          gh<_i323.SignupBloc>(),
        ));
    return this;
  }
}

class _$FirebaseModule extends _i630.FirebaseModule {}
