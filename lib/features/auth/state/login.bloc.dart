import 'package:biite/api/repositories/auth.repository.dart';
import 'package:biite/api/utils/repository.params.dart';
import 'package:biite/core/presentation/state/email.field.bloc.dart';
import 'package:biite/core/presentation/state/password.field.bloc.dart';
import 'package:biite/features/auth/state/auth.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class LoginBloc extends Cubit<LoginState> {
  LoginBloc(
    this.authRepository,
    @Named("login") this._loginEmailFieldBloc,
    @Named("login") this._loginPasswordFieldBloc,
  ) : super(const LoginState.initial());

  final AuthRepository authRepository;
  final EmailFieldBloc _loginEmailFieldBloc;
  final PasswordFieldBloc _loginPasswordFieldBloc;

  void signin() async {
    bool isLoading = state.maybeWhen(orElse: () => false, loading: () => true);
    if (isLoading) return;

    emit(const LoginState.loading());

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
      emit(const LoginState.error("fill all fields"));
      return;
    }

    final param = SigninParam(email: email, password: password);

    final result = await authRepository.signin(param);
    result.fold(
      (l) => emit(LoginState.error(l.message)),
      (r) => emit(const LoginState.success()),
    );
  }

  // void _checkUserExistence(AppStartedEvent event, Emitter<AuthState> emit) async {
  //   emit(AuthState.signinLoading(user: null, message: state.message));

  //   final result = await authRepository.isExistingUser();
  //   result.fold(
  //     (l) => emit(AuthState.error(user: null, message: l.message)),
  //     (r) => emit(AuthState.userExists(user: state.user, message: null)),
  //   );
  // }
}
