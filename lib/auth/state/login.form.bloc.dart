import 'package:biite/auth/state/login.bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class LoginFormBloc extends FormFieldBaseBloc {
  LoginFormBloc(
    @Named("login") this.emailFieldBloc,
    @Named("login") this.passwordFieldBloc,
    this.loginBloc,
  ) : super(const FormFieldBaseState.initial()) {
    on<LoginFormFieldEvent>(isValid);
  }

  final EmailFieldBloc emailFieldBloc;
  final PasswordFieldBloc passwordFieldBloc;
  final LoginBloc loginBloc;

  @override
  void isValid(FormFieldEvent event, Emitter<FormFieldBaseState> emit) {
    if (event is LoginFormFieldEvent) {
      const FormFieldBaseState.initial();
      if (emailFieldBloc.state.maybeWhen(orElse: () => true, valid: (_) => false)) {
        emit(FormFieldBaseState.invalid(message: emailFieldBloc.getErrorText()));
        return;
      }
      if (passwordFieldBloc.state.maybeWhen(orElse: () => true, valid: (_) => false)) {
        emit(FormFieldBaseState.invalid(message: passwordFieldBloc.getErrorText()));
        return;
      }
      // emit(const FormFieldBaseState.valid());
      loginBloc.signin();
    }
  }
}
