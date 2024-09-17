import 'package:biite/api/repositories/auth.repository.dart';
import 'package:biite/api/utils/repository.params.dart';
import 'package:biite/features/auth/state/auth.events.dart';
import 'package:biite/features/auth/state/auth.state.dart';
import 'package:biite/features/auth/state/login.form.bloc.dart';
import 'package:biite/features/auth/state/signup.form.bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
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

    final email = _signupFormBloc.emailFieldBloc.state.maybeMap(
      orElse: () => "",
      valid: (state) => state.data,
    );

    final password = _signupFormBloc.confirmPasswordFieldBloc.state.maybeMap(
      orElse: () => "",
      valid: (state) => state.data,
    );

    final name = _signupFormBloc.nameFieldBloc.state.maybeMap(
      orElse: () => "",
      valid: (state) => state.data,
    );

    /// for debugging
    assert(() {
      if (name.isEmpty || password.isEmpty || email.isEmpty) {
        return false;
      }
      return true;
    }());

    if (password.isEmpty || name.isEmpty || email.isEmpty) {
      emit(const AuthState.error(user: null, message: "fill all fields"));
      return;
    }

    final param = SignupParam(email: email, password: password, name: name);

    final result = await authRepository.signup(param);
    result.fold(
      (l) => emit(AuthState.error(user: null, message: l.message)),
      (r) => emit(AuthState.signupSuccess(user: state.user, message: null)),
    );
  }

  void _signin(LoginEvent event, Emitter<AuthState> emit) async {
    emit(AuthState.signinLoading(user: state.user, message: state.message));
    final email = _loginFormBloc.emailFieldBloc.state.maybeMap(
      orElse: () => "",
      valid: (state) => state.data,
    );

    final password = _loginFormBloc.passwordFieldBloc.state.maybeMap(
      orElse: () => "",
      valid: (state) => state.data,
    );

    assert(() {
      if (password.isEmpty || email.isEmpty) {
        return false;
      }
      return true;
    }());

    if (password.isEmpty || email.isEmpty) {
      emit(const AuthState.error(user: null, message: "fill all fields"));
      return;
    }

    final param = SigninParam(email: email, password: password);

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
