import 'package:biite/core/presentation/state/base.field.bloc.dart';
import 'package:biite/core/presentation/state/field.events.dart';
import 'package:biite/core/presentation/state/field.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

      emit(FieldState.valid(data: event.rate!.toString()));
    }
  }

  @override
  Future<void> close() {
    compensationController.dispose();
    return super.close();
  }
}
