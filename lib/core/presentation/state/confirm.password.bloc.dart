import 'package:biite/core/presentation/state/base.field.bloc.dart';
import 'package:biite/core/presentation/state/field.events.dart';
import 'package:biite/core/presentation/state/field.state.dart';
import 'package:biite/core/presentation/state/password.field.bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class ConfirmPasswordFieldBloc extends FieldBaseBloc {
  ConfirmPasswordFieldBloc(this.passwordFieldBloc)
      : confirmPasswordController = TextEditingController(),
        super(const FieldState.initial()) {
    on<ConfirmPasswordFieldEvent>(isValid);
  }

  final TextEditingController confirmPasswordController;
  final PasswordFieldBloc passwordFieldBloc;

  @override
  void isValid(FieldEvent event, Emitter<FieldState> emit) {
    if (event is ConfirmPasswordFieldEvent) {
      if (event.password == null) {
        emit(const FieldState.invalid(message: "password cant not be null"));
        return;
      }

      if (event.password!.length < 6) {
        emit(const FieldState.invalid(message: "password should not be less than 6 characters"));
        return;
      }

      if (passwordFieldBloc.state.maybeMap(orElse: () => true, valid: (state) => state.data) != event.password) {
        emit(const FieldState.invalid(message: "password mismatch"));
        return;
      }

      emit(FieldState.valid(data: event.password!));
    }
  }

  @override
  Future<void> close() {
    confirmPasswordController.dispose();
    return super.close();
  }
}
