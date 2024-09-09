import 'package:biite/api/repositories/auth.repository.dart';
import 'package:biite/api/utils/repository.params.dart';
import 'package:biite/features/auth/state/auth.events.dart';
import 'package:biite/features/auth/state/auth.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvents, AuthState> {
  AuthBloc(this.authRepository)
      : _signupNameController = TextEditingController(),
        _signupEmailController = TextEditingController(),
        _signupPasswordController = TextEditingController(),
        _signupConfirmPasswordController = TextEditingController(),
        _loginEmailController = TextEditingController(),
        _loginPasswordController = TextEditingController(),
        super(const AuthState.initial(user: null, message: null)) {
    on<AppStartedEvent>(_checkUserExistence);
    on<SignupEvent>(_signup);
    on<LoginEvent>(_signin);
  }

  final AuthRepository authRepository;

  final TextEditingController _signupNameController;
  final TextEditingController _signupEmailController;
  final TextEditingController _signupPasswordController;
  final TextEditingController _signupConfirmPasswordController;
  final TextEditingController _loginEmailController;
  final TextEditingController _loginPasswordController;

  TextEditingController get signupNameController => _signupNameController;
  TextEditingController get signupEmailController => _signupEmailController;
  TextEditingController get signupPasswordController => _signupPasswordController;
  TextEditingController get signupConfirmPasswordController => _signupConfirmPasswordController;
  TextEditingController get loginEmailController => _loginEmailController;
  TextEditingController get loginPasswordController => _loginPasswordController;

  void _signup(SignupEvent event, Emitter<AuthState> emit) async {
    emit(AuthState.signupLoading(user: state.user, message: state.message));

    final param = SignupParam(
      email: _signupEmailController.value.text,
      password: _signupConfirmPasswordController.value.text,
      name: _signupNameController.value.text,
    );

    final result = await authRepository.signup(param);
    result.fold(
      (l) => emit(AuthState.error(user: null, message: l.message)),
      (r) => emit(AuthState.signupSuccess(user: state.user, message: null)),
    );
  }

  void _signin(LoginEvent event, Emitter<AuthState> emit) async {
    emit(AuthState.signinLoading(user: state.user, message: state.message));

    final param = SigninParam(
      email: _loginEmailController.value.text,
      password: _loginPasswordController.value.text,
    );

    final result = await authRepository.signin(param);
    result.fold(
      (l) => emit(AuthState.error(user: null, message: l.message)),
      (r) => emit(AuthState.signinSuccess(user: state.user, message: null)),
    );
  }

  void _checkUserExistence(AppStartedEvent event, Emitter<AuthState> emit) async {
    emit(AuthState.signinLoading(user: null, message: state.message));

    final result = await authRepository.isExistingUser();
    result.fold(
      (l) => emit(AuthState.error(user: null, message: l.message)),
      (r) => emit(AuthState.userExists(user: state.user, message: null)),
    );
  }
}
