import 'package:biite/core/presentation/state/base.field.bloc.dart';
import 'package:biite/core/presentation/state/field.events.dart';
import 'package:biite/core/presentation/state/field.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailFieldBloc extends FieldBaseBloc<EmailState> {
  EmailFieldBloc()
      : emailController = TextEditingController(),
        super(const EmailState.initial(data: "", message: "invalid email", isValid: false)) {
    on<EmailFieldEvent>(isValid);
  }

  final TextEditingController emailController;

  final emailRegex = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  @override
  void isValid(FieldEvent event, Emitter<EmailState> emit) {
    if (event is EmailFieldEvent) {
      if (event.email == null) {
        emit(EmailState.invalid(data: state.data, message: "email cant not be null", isValid: false));
        return;
      }

      if (!emailRegex.hasMatch(event.email!)) {
        emit(EmailState.invalid(data: state.data, message: "invalid email", isValid: false));
        return;
      }
      emit(EmailState.valid(data: event.email!, message: null, isValid: true));
    }
  }

  @override
  Future<void> close() {
    emailController.dispose();
    return super.close();
  }
}
