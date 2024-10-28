import 'package:authentication_repository/authentication_repository.dart';
import 'package:biite/auth/state/auth.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class LoginBloc extends Cubit<LoginState> {
  LoginBloc(
    @Named("login") this._loginEmailFieldBloc,
    @Named("login") this._loginPasswordFieldBloc,
  )   : authRepository = authenticationGetIt.get<AuthenticationRepository>(),
        super(const LoginState.initial());

  final AuthenticationRepository authRepository;
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

    _clearFields();

    final param = SigninParam(email: email, password: password);

    final result = await authRepository.signin(param);
    result.fold(
      (l) => emit(LoginState.error(l.message)),
      (r) => emit(const LoginState.success()),
    );
  }

  void _clearFields() {
    _loginEmailFieldBloc.controller.clear();
    _loginPasswordFieldBloc.passwordController.clear();
  }
}
