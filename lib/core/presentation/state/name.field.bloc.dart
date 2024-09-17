import 'package:biite/core/presentation/state/base.field.bloc.dart';
import 'package:biite/core/presentation/state/field.events.dart';
import 'package:biite/core/presentation/state/field.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class NameFieldBloc extends FieldBaseBloc {
  NameFieldBloc()
      : nameController = TextEditingController(),
        super(const FieldState.initial()) {
    on<NameFieldEvent>(isValid);
  }

  final TextEditingController nameController;

  final nameRegex = RegExp(r'^[A-Za-z ]+$');

  @override
  void isValid(FieldEvent event, Emitter<FieldState> emit) {
    if (event is NameFieldEvent) {
      if (event.name == null) {
        emit(const FieldState.invalid(message: "name cant not be null"));
        return;
      }

      if (!nameRegex.hasMatch(event.name!)) {
        emit(const FieldState.invalid(message: "invalid name"));
        return;
      }

      emit(FieldState.valid(data: event.name!));
    }
  }

  @override
  Future<void> close() {
    nameController.dispose();
    return super.close();
  }
}
