import 'package:biite/core/presentation/state/base.field.bloc.dart';
import 'package:biite/core/presentation/state/field.events.dart';
import 'package:biite/core/presentation/state/field.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class NameFieldBloc extends FieldBaseBloc<NameState> {
  NameFieldBloc()
      : nameController = TextEditingController(),
        super(const NameState.initial(data: "", message: null, isValid: false)) {
    on<NameFieldEvent>(isValid);
  }

  final TextEditingController nameController;

  final nameRegex = RegExp(r'^[A-Za-z ]+$');

  @override
  void isValid(FieldEvent event, Emitter<NameState> emit) {
    if (event is NameFieldEvent) {
      if (event.name == null) {
        emit(NameState.invalid(data: state.data, message: "name cant not be null", isValid: false));
        return;
      }

      if (!nameRegex.hasMatch(event.name!)) {
        emit(NameState.invalid(data: state.data, message: "invalid name", isValid: false));
        return;
      }

      emit(NameState.valid(data: event.name!, message: null, isValid: true));
    }
  }

  @override
  Future<void> close() {
    nameController.dispose();
    return super.close();
  }
}
