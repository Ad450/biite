import 'package:biite/core/presentation/state/base.formfield.bloc.dart';
import 'package:biite/core/presentation/state/email.field.bloc.dart';
import 'package:biite/core/presentation/state/form.field.events.dart';
import 'package:biite/core/presentation/state/form.field.state.dart';
import 'package:biite/core/presentation/state/password.field.bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class LoginFormBloc extends FormFieldBaseBloc<SigninFormFieldState> {
  LoginFormBloc(
    this.emailFieldBloc,
    this.passwordFieldBloc,
  ) : super(SigninFormFieldState.initial(
          isValid: false,
          message: null,
          time: DateTime.now().millisecondsSinceEpoch,
        )) {
    on<LoginFormFieldEvent>(isValid);
  }

  final EmailFieldBloc emailFieldBloc;
  final PasswordFieldBloc passwordFieldBloc;

  @override
  void isValid(FormFieldEvent event, Emitter<SigninFormFieldState> emit) {
    if (event is LoginFormFieldEvent) {
      if (!emailFieldBloc.state.isValid) {
        emit(SigninFormFieldState.invalid(
          isValid: false,
          message: emailFieldBloc.state.message,
          time: DateTime.now().millisecondsSinceEpoch,
        ));
        return;
      }
      if (!passwordFieldBloc.state.isValid) {
        emit(SigninFormFieldState.invalid(
          isValid: false,
          message: passwordFieldBloc.state.message,
          time: DateTime.now().millisecondsSinceEpoch,
        ));
        return;
      }
      emit(SigninFormFieldState.valid(isValid: true, message: null, time: DateTime.now().millisecondsSinceEpoch));
    }
  }
}
