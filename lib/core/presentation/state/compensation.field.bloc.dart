import 'package:biite/core/presentation/state/base.field.bloc.dart';
import 'package:biite/core/presentation/state/field.events.dart';
import 'package:biite/core/presentation/state/field.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class CompensationFieldBloc extends FieldBaseBloc<CompensationState> {
  CompensationFieldBloc()
      : compensationController = TextEditingController(),
        super(const CompensationState.initial(data: 0.0, message: null, isValid: false)) {
    on<CompensationFieldEvent>(isValid);
  }

  final TextEditingController compensationController;

  @override
  void isValid(FieldEvent event, Emitter<CompensationState> emit) {
    if (event is CompensationFieldEvent) {
      if (event.rate == null) {
        emit(
          CompensationState.invalid(data: state.data, message: "compensation cant not be null", isValid: false),
        );
        return;
      }

      if (event.rate! > 0.0) {
        emit(CompensationState.invalid(
          data: state.data,
          message: "compensation not acceptable",
          isValid: false,
        ));
        return;
      }

      emit(CompensationState.valid(data: event.rate!, message: null, isValid: true));
    }
  }

  @override
  Future<void> close() {
    compensationController.dispose();
    return super.close();
  }
}
