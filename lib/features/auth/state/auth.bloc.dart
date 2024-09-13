import 'package:biite/api/repositories/auth.repository.dart';
import 'package:biite/api/utils/repository.params.dart';
import 'package:biite/features/auth/state/auth.events.dart';
import 'package:biite/features/auth/state/auth.state.dart';
import 'package:biite/features/auth/state/login.form.bloc.dart';
import 'package:biite/features/auth/state/signup.form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvents, AuthState> {
  AuthBloc(this.authRepository, this._loginFormBloc, this._signupFormBloc)
      : super(const AuthState.initial(user: null, message: null)) {
    on<AppStartedEvent>(_checkUserExistence);
    on<SignupEvent>(_signup);
    on<LoginEvent>(_signin);
  }

  final AuthRepository authRepository;

  final LoginFormBloc _loginFormBloc;
  final SignupFormBloc _signupFormBloc;

  void _signup(SignupEvent event, Emitter<AuthState> emit) async {
    emit(AuthState.signupLoading(user: state.user, message: state.message));

    final param = SignupParam(
      email: _signupFormBloc.emailFieldBloc.state.data,
      password: _signupFormBloc.confirmPasswordFieldBloc.state.data,
      name: _signupFormBloc.nameFieldBloc.state.data,
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
      email: _loginFormBloc.emailFieldBloc.state.data,
      password: _loginFormBloc.passwordFieldBloc.state.data,
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
