import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/src/base.field.bloc.dart';
import 'package:form_validator/src/field.events.dart';
import 'package:form_validator/src/field.state.dart';

class PasswordFieldBloc extends FieldBaseBloc {
  PasswordFieldBloc()
      : passwordController = TextEditingController(),
        super(const FieldState.initial()) {
    on<PasswordFieldEvent>(isValid);
  }

  final TextEditingController passwordController;

  @override
  void isValid(FieldEvent event, Emitter<FieldState> emit) {
    if (event is PasswordFieldEvent) {
      if (event.password == null) {
        emit(const FieldState.invalid(message: "email cant not be null"));
        return;
      }

      if (event.password!.length < 6) {
        emit(const FieldState.invalid(message: "invalid password"));
        return;
      }

      emit(FieldState.valid(data: event.password!));
      // print("this is the password, ${event.password}");
      // final pass = state.maybeMap(orElse: () => null, valid: (state) => state.data);
      // print(".....pass in state, $pass");
    }
  }

  @override
  Future<void> close() {
    passwordController.dispose();
    return super.close();
  }
}
