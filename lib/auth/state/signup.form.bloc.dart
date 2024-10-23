import 'package:biite/auth/state/signup.bloc.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class SignupFormBloc extends FormFieldBaseBloc {
  SignupFormBloc(
    @Named("signup") this.emailFieldBloc,
    @Named("signup") this.passwordFieldBloc,
    this.confirmPasswordFieldBloc,
    @Named("signup") this.nameFieldBloc,
    this.signupBloc,
  ) : super(const FormFieldBaseState.initial()) {
    on<SignupFormFieldEvent>(isValid);
  }

  final EmailFieldBloc emailFieldBloc;
  final PasswordFieldBloc passwordFieldBloc;
  final ConfirmPasswordFieldBloc confirmPasswordFieldBloc;
  final NameFieldBloc nameFieldBloc;
  final SignupBloc signupBloc;

  @override
  void isValid(FormFieldEvent event, Emitter<FormFieldBaseState> emit) {
    if (event is SignupFormFieldEvent) {
      if (emailFieldBloc.state.maybeWhen(orElse: () => true, valid: (_) => false)) {
        emit(FormFieldBaseState.invalid(message: emailFieldBloc.getErrorText()));
        return;
      }
      if (passwordFieldBloc.state.maybeMap(orElse: () => true, valid: (_) => false)) {
        emit(FormFieldBaseState.invalid(message: passwordFieldBloc.getErrorText()));
        return;
      }
      if (confirmPasswordFieldBloc.state.maybeWhen(orElse: () => true, valid: (_) => false)) {
        emit(FormFieldBaseState.invalid(message: confirmPasswordFieldBloc.getErrorText()));
        return;
      }
      if (nameFieldBloc.state.maybeWhen(orElse: () => true, valid: (_) => false)) {
        emit(FormFieldBaseState.invalid(message: nameFieldBloc.getErrorText()));
        return;
      }
      signupBloc.signup();
    }
  }
}
