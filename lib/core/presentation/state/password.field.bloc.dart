import 'package:biite/core/presentation/state/base.field.bloc.dart';
import 'package:biite/core/presentation/state/field.events.dart';
import 'package:biite/core/presentation/state/field.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
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
    }
  }

  @override
  Future<void> close() {
    passwordController.dispose();
    return super.close();
  }
}
