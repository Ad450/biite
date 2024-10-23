import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/src/base.field.bloc.dart';
import 'package:form_validator/src/field.events.dart';
import 'package:form_validator/src/field.state.dart';

class DescriptionFieldBloc extends FieldBaseBloc {
  DescriptionFieldBloc()
      : descriptionController = TextEditingController(),
        super(const FieldState.initial()) {
    on<DescriptionFieldEvent>(isValid);
  }

  final TextEditingController descriptionController;

  @override
  void isValid(FieldEvent event, Emitter<FieldState> emit) {
    if (event is DescriptionFieldEvent) {
      if (event.description == null) {
        emit(const FieldState.invalid(message: "description cant not be null"));
        return;
      }

      if (event.description!.length < 20) {
        emit(
          const FieldState.invalid(message: "description should be more than 20 characters"),
        );
        return;
      }

      emit(FieldState.valid(data: event.description!));
    }
  }

  @override
  Future<void> close() {
    descriptionController.dispose();
    return super.close();
  }
}
