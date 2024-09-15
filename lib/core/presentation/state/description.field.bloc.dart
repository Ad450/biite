import 'package:biite/core/presentation/state/base.field.bloc.dart';
import 'package:biite/core/presentation/state/field.events.dart';
import 'package:biite/core/presentation/state/field.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DescriptionFieldBloc extends FieldBaseBloc<DescriptionState> {
  DescriptionFieldBloc()
      : descriptionController = TextEditingController(),
        super(const DescriptionState.initial(data: "", message: "invalid description", isValid: false)) {
    on<DescriptionFieldEvent>(isValid);
  }

  final TextEditingController descriptionController;

  @override
  void isValid(FieldEvent event, Emitter<DescriptionState> emit) {
    if (event is DescriptionFieldEvent) {
      if (event.description == null) {
        emit(DescriptionState.invalid(data: state.data, message: "description cant not be null", isValid: false));
        return;
      }

      if (event.description!.length < 20) {
        emit(
          DescriptionState.invalid(
              data: state.data, message: "description should be more than 20 characters", isValid: false),
        );
        return;
      }

      emit(DescriptionState.valid(data: event.description!, message: null, isValid: true));
    }
  }

  @override
  Future<void> close() {
    descriptionController.dispose();
    return super.close();
  }
}
