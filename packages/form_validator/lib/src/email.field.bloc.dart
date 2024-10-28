import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/src/base.field.bloc.dart';
import 'package:form_validator/src/field.events.dart';
import 'package:form_validator/src/field.state.dart';

class EmailFieldBloc extends FieldBaseBloc {
  EmailFieldBloc()
      : controller = TextEditingController(),
        super(const FieldState.initial()) {
    on<EmailFieldEvent>(isValid);
  }

  final TextEditingController controller;

  final emailRegex = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  @override
  void isValid(FieldEvent event, Emitter<FieldState> emit) {
    if (event is EmailFieldEvent) {
      if (event.email == null) {
        emit(const FieldState.invalid(message: "email cant not be null"));
        return;
      }

      if (!emailRegex.hasMatch(event.email!)) {
        emit(const FieldState.invalid(message: "invalid email"));
        return;
      }
      emit(FieldState.valid(data: event.email!));
    }
  }

  @override
  Future<void> close() {
    controller.dispose();
    return super.close();
  }
}
