import 'package:biite/core/presentation/state/base.field.bloc.dart';
import 'package:biite/core/presentation/state/field.events.dart';
import 'package:biite/core/presentation/state/field.state.dart';
import 'package:biite/core/presentation/state/password.field.bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class ConfirmPasswordFieldBloc extends FieldBaseBloc<ConfirmPasswordState> {
  ConfirmPasswordFieldBloc(this.passwordFieldBloc)
      : confirmPasswordController = TextEditingController(),
        super(const ConfirmPasswordState.initial(data: "", message: null, isValid: false)) {
    on<ConfirmPasswordFieldEvent>(isValid);
  }

  final TextEditingController confirmPasswordController;
  final PasswordFieldBloc passwordFieldBloc;

  @override
  void isValid(FieldEvent event, Emitter<ConfirmPasswordState> emit) {
    if (event is ConfirmPasswordFieldEvent) {
      if (event.password == null) {
        emit(ConfirmPasswordState.invalid(data: state.data, message: "email cant not be null", isValid: false));
        return;
      }

      if (event.password!.length < 6) {
        emit(ConfirmPasswordState.invalid(
          data: state.data,
          message: "password should not be less than 6 characters",
          isValid: false,
        ));
        return;
      }

      if (passwordFieldBloc.state.data != event.password) {
        emit(ConfirmPasswordState.invalid(data: state.data, message: "password mismatch", isValid: false));
        return;
      }

      emit(ConfirmPasswordState.valid(data: event.password!, message: null, isValid: true));
    }
  }
}
