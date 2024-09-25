import 'package:biite/api/repositories/auth.repository.dart';
import 'package:biite/api/utils/repository.params.dart';
import 'package:biite/core/presentation/state/confirm.password.bloc.dart';
import 'package:biite/core/presentation/state/email.field.bloc.dart';
import 'package:biite/core/presentation/state/name.field.bloc.dart';
import 'package:biite/features/auth/state/auth.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class SignupBloc extends Cubit<SignupState> {
  SignupBloc(
    this.authRepository,
    @Named("signup") this._signupEmailFieldBloc,
    @Named("signup") this._nameFieldBloc,
    this._confirmPasswordFieldBloc,
  ) : super(const SignupState.initial());

  final AuthRepository authRepository;
  final EmailFieldBloc _signupEmailFieldBloc;
  final ConfirmPasswordFieldBloc _confirmPasswordFieldBloc;
  final NameFieldBloc _nameFieldBloc;

  void signup() async {
    // lock down function while processing a request
    bool isLoading = state.maybeWhen(orElse: () => false, loading: () => true);
    if (isLoading) return;

    emit(const SignupState.loading());

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
      final condition = name.isEmpty || password.isEmpty || email.isEmpty;
      if (condition) {
        return false;
      }
      return true;
    }());

    if (password.isEmpty || name.isEmpty || email.isEmpty) {
      emit(const SignupState.error("fill all fields"));
      return;
    }

    final param = SignupParam(email: email, password: password, name: name);

    final result = await authRepository.signup(param);
    result.fold(
      (l) => emit(SignupState.error(l.message)),
      (r) => emit(const SignupState.success()),
    );
  }
}
