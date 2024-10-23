import 'package:biite/dashboard/bloc/file.bloc.dart';
import 'package:biite/dashboard/bloc/tags.bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'biite.di.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void configureAppDependencies() => getIt.init();

@module
abstract class FirebaseModule {
  @Named('signup')
  @singleton
  EmailFieldBloc get signupEmailFieldBloc => EmailFieldBloc();

  @Named('signup')
  @singleton
  NameFieldBloc get signupNameFieldBloc => NameFieldBloc();

  @Named('login')
  @singleton
  EmailFieldBloc get loginEmailFieldBloc => EmailFieldBloc();

  @Named('signup')
  @singleton
  PasswordFieldBloc get signupPasswordFieldBloc => PasswordFieldBloc();

  @injectable
  ConfirmPasswordFieldBloc get confirmPasswordFieldBloc =>
      ConfirmPasswordFieldBloc(getIt.get<PasswordFieldBloc>(instanceName: "signup"));

  @Named('login')
  @singleton
  PasswordFieldBloc get loginPasswordFieldBloc => PasswordFieldBloc();

  @Named('profile')
  @singleton
  PasswordFieldBloc get profilePasswordField => PasswordFieldBloc();

  @Named('createProject')
  @singleton
  NameFieldBloc get nameFieldBloc => NameFieldBloc();

  @Named('search')
  @lazySingleton
  NameFieldBloc get searchField => NameFieldBloc();

  @Named('chat')
  @lazySingleton
  NameFieldBloc get chatField => NameFieldBloc();

  @Named('profile')
  @lazySingleton
  NameFieldBloc get profileNameField => NameFieldBloc();

  @Named('createProject')
  @lazySingleton
  CompensationFieldBloc get compensationFieldBloc => CompensationFieldBloc();

  @Named('bid')
  @lazySingleton
  CompensationFieldBloc get bidCompensationFieldBloc => CompensationFieldBloc();

  @Named('bid')
  @lazySingleton
  DescriptionFieldBloc get bidDescriptionFieldBloc => DescriptionFieldBloc();

  @Named('createProject')
  @lazySingleton
  DescriptionFieldBloc get descriptionFieldBloc => DescriptionFieldBloc();

  @Named('createProject')
  @lazySingleton
  FileBloc get createProjectFileBloc => FileBloc();

  @Named('sendWork')
  @lazySingleton
  FileBloc get sendWorkFileBloc => FileBloc();

  @Named('profile')
  @lazySingleton
  DescriptionFieldBloc get profileDescrptionField => DescriptionFieldBloc();

  @Named('createProject')
  @lazySingleton
  TagsBloc get tagsBloc => TagsBloc();
}
