import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/src/base.field.bloc.dart';
import 'package:form_validator/src/field.events.dart';
import 'package:form_validator/src/field.state.dart';

class NameFieldBloc extends FieldBaseBloc {
  NameFieldBloc()
      : nameController = TextEditingController(),
        super(const FieldState.initial()) {
    on<NameFieldEvent>(isValid);
  }

  final TextEditingController nameController;

  // final nameRegex = RegExp(r'^[A-Za-z ]+$');

  @override
  void isValid(FieldEvent event, Emitter<FieldState> emit) {
    if (event is NameFieldEvent) {
      if (event.name == null || event.name!.isEmpty) {
        emit(const FieldState.initial());
        return;
      }

      // if (!nameRegex.hasMatch(event.name!)) {
      //   emit(const FieldState.invalid(message: "invalid name"));
      //   return;
      // }

      emit(FieldState.valid(data: event.name!));
    }
  }

  @override
  Future<void> close() {
    nameController.dispose();
    return super.close();
  }
}
