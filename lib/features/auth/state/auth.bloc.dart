// import 'package:biite/api/repositories/auth.repository.dart';
// import 'package:biite/api/utils/repository.params.dart';
// import 'package:biite/core/presentation/state/confirm.password.bloc.dart';
// import 'package:biite/core/presentation/state/email.field.bloc.dart';
// import 'package:biite/core/presentation/state/name.field.bloc.dart';
// import 'package:biite/core/presentation/state/password.field.bloc.dart';
// import 'package:biite/features/auth/state/auth.events.dart';
// import 'package:biite/features/auth/state/auth.state.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:injectable/injectable.dart';

// @LazySingleton()
// class AuthBloc extends Cubit<LoginState> {
//   AuthBloc(
//     this.authRepository,
//     @Named("signup") this._signupEmailFieldBloc,
//     @Named("signup") this._nameFieldBloc,
//     @Named("login") this._loginEmailFieldBloc,
//     @Named("login") this._loginPasswordFieldBloc,
//     this._confirmPasswordFieldBloc,
//   ) : super(const LoginState.initial());

//   final AuthRepository authRepository;
//   final EmailFieldBloc _signupEmailFieldBloc;
//   final EmailFieldBloc _loginEmailFieldBloc;
//   final PasswordFieldBloc _loginPasswordFieldBloc;
//   final ConfirmPasswordFieldBloc _confirmPasswordFieldBloc;
//   final NameFieldBloc _nameFieldBloc;


