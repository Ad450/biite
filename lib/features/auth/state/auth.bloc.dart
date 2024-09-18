import 'package:biite/api/repositories/auth.repository.dart';
import 'package:biite/api/utils/repository.params.dart';
import 'package:biite/core/presentation/state/confirm.password.bloc.dart';
import 'package:biite/core/presentation/state/email.field.bloc.dart';
import 'package:biite/core/presentation/state/name.field.bloc.dart';
import 'package:biite/core/presentation/state/password.field.bloc.dart';
import 'package:biite/features/auth/state/auth.events.dart';
import 'package:biite/features/auth/state/auth.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class AuthBloc extends Bloc<AuthEvents, AuthState> {
  AuthBloc(
    this.authRepository,
    @Named("signup") this._signupEmailFieldBloc,
    @Named("signup") this._nameFieldBloc,
    @Named("login") this._loginEmailFieldBloc,
    @Named("login") this._loginPasswordFieldBloc,
    this._confirmPasswordFieldBloc,
  ) : super(const AuthState.initial(user: null, message: null)) {
    on<AppStartedEvent>(_checkUserExistence);
    on<SignupEvent>(_signup);
    on<LoginEvent>(_signin);
  }

  final AuthRepository authRepository;
  final EmailFieldBloc _signupEmailFieldBloc;
  final EmailFieldBloc _loginEmailFieldBloc;
  final PasswordFieldBloc _loginPasswordFieldBloc;
  final ConfirmPasswordFieldBloc _confirmPasswordFieldBloc;
  final NameFieldBloc _nameFieldBloc;

  void _signup(SignupEvent event, Emitter<AuthState> emit) async {
    // lock down function while processing a request
    bool isLoading = state.maybeWhen(orElse: () => false, signupLoading: (_, __) => true);
    if (isLoading) return;

    emit(AuthState.signupLoading(user: state.user, message: state.message));

    final email = _signupEmailFieldBloc.state.maybeMap(
      orElse: () => "",
      valid: (state) => state.data,
    );

    final password = _confirmPasswordFieldBloc.state.maybeMap(
      orElse: () => "",
      valid: (state) => state.data,
    );

    final name = _nameFieldBloc.state.maybeMap(
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
    bool isLoading = state.maybeWhen(orElse: () => false, signinLoading: (_, __) => true);
    if (isLoading) return;

    emit(AuthState.signinLoading(user: state.user, message: state.message));
    final email = _loginEmailFieldBloc.state.maybeMap(
      orElse: () => "",
      valid: (state) => state.data,
    );

    final password = _loginPasswordFieldBloc.state.maybeMap(
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
