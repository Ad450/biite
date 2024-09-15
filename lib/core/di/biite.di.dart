import 'package:biite/core/presentation/state/compensation.field.bloc.dart';
import 'package:biite/core/presentation/state/compensation.field.bloc.dart';
import 'package:biite/core/presentation/state/confirm.password.bloc.dart';
import 'package:biite/core/presentation/state/description.field.bloc.dart';
import 'package:biite/core/presentation/state/email.field.bloc.dart';
import 'package:biite/core/presentation/state/password.field.bloc.dart';
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

  @Named('login')
  @singleton
  EmailFieldBloc get loginEmailFieldBloc => EmailFieldBloc();

  @Named('signup')
  @singleton
  PasswordFieldBloc get signupPasswordFieldBloc => PasswordFieldBloc();

  @Named('login')
  @singleton
  PasswordFieldBloc get loginPasswordFieldBloc => PasswordFieldBloc();

  @lazySingleton
  CompensationFieldBloc get compensationFieldBloc => CompensationFieldBloc();
  @lazySingleton
  DescriptionFieldBloc get descriptionFieldBloc => DescriptionFieldBloc();
}
