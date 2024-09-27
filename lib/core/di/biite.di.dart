import 'package:biite/core/presentation/state/compensation.field.bloc.dart';
import 'package:biite/core/presentation/state/description.field.bloc.dart';
import 'package:biite/core/presentation/state/email.field.bloc.dart';
import 'package:biite/core/presentation/state/name.field.bloc.dart';
import 'package:biite/core/presentation/state/password.field.bloc.dart';
import 'package:biite/features/dashboard/bloc/file.bloc.dart';
import 'package:biite/features/dashboard/bloc/tags.bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'biite.di.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void configureDependencies() => getIt.init();

@module
abstract class FirebaseModule {
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  FirebaseStorage get firebaseStorage => FirebaseStorage.instance;

  @lazySingleton
  FirebaseFirestore get firebaseFirestore => FirebaseFirestore.instance;

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
