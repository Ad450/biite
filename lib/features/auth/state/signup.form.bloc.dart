import 'package:biite/core/presentation/state/base.formfield.bloc.dart';
import 'package:biite/core/presentation/state/confirm.password.bloc.dart';
import 'package:biite/core/presentation/state/email.field.bloc.dart';
import 'package:biite/core/presentation/state/form.field.events.dart';
import 'package:biite/core/presentation/state/form.field.state.dart';
import 'package:biite/core/presentation/state/name.field.bloc.dart';
import 'package:biite/core/presentation/state/password.field.bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class SignupFormBloc extends FormFieldBaseBloc<SignupFormFieldState> {
  SignupFormBloc(
    @Named("signup") this.emailFieldBloc,
    @Named("signup") this.passwordFieldBloc,
    this.confirmPasswordFieldBloc,
    this.nameFieldBloc,
  ) : super(const SignupFormFieldState.initial(isValid: false, message: null)) {
    on<SignupFormFieldEvent>(isValid);
  }

  final EmailFieldBloc emailFieldBloc;
  final PasswordFieldBloc passwordFieldBloc;
  final ConfirmPasswordFieldBloc confirmPasswordFieldBloc;
  final NameFieldBloc nameFieldBloc;

  @override
  void isValid(FormFieldEvent event, Emitter<SignupFormFieldState> emit) {
    if (event is SignupFormFieldEvent) {
      if (!emailFieldBloc.state.isValid) {
        emit(SignupFormFieldState.invalid(isValid: false, message: emailFieldBloc.state.message));
        return;
      }
      if (!passwordFieldBloc.state.isValid) {
        emit(SignupFormFieldState.invalid(isValid: false, message: passwordFieldBloc.state.message));
        return;
      }
      if (!confirmPasswordFieldBloc.state.isValid) {
        emit(SignupFormFieldState.invalid(isValid: false, message: confirmPasswordFieldBloc.state.message));
        return;
      }
      if (!nameFieldBloc.state.isValid) {
        emit(SignupFormFieldState.invalid(isValid: false, message: nameFieldBloc.state.message));
        return;
      }
      emit(const SignupFormFieldState.valid(isValid: true, message: null));
    }
  }
}
