import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/src/base.field.bloc.dart';
import 'package:form_validator/src/field.events.dart';
import 'package:form_validator/src/field.state.dart';

class CompensationFieldBloc extends FieldBaseBloc {
  CompensationFieldBloc()
      : compensationController = TextEditingController(),
        super(const FieldState.initial()) {
    on<CompensationFieldEvent>(isValid);
  }

  final TextEditingController compensationController;

  @override
  void isValid(FieldEvent event, Emitter<FieldState> emit) {
    if (event is CompensationFieldEvent) {
      if (event.rate == null) {
        emit(const FieldState.invalid(message: "compensation cant not be null"));
        return;
      }

      if (event.rate! <= 0) {
        emit(const FieldState.invalid(message: "compensation not acceptable"));
        return;
      }
      if (event.rate!.toString().length > 9) {
        emit(const FieldState.invalid(message: "compensation not acceptable"));
        return;
      }

      emit(FieldState.valid(data: event.rate!.toString()));
    }
  }

  @override
  Future<void> close() {
    compensationController.dispose();
    return super.close();
  }
}
