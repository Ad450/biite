import 'package:biite/core/presentation/state/form.field.events.dart';
import 'package:biite/core/presentation/state/form.field.state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

/// [FormFieldBaseBloc] forms the base class for all field blocs
/// It extends [Bloc] which takes in the [FormFieldEvent] and a
/// [FormFieldBaseState] is a state object
/// Subclasses will implement [isValid] providing all the validations
abstract class FormFieldBaseBloc extends Bloc<FormFieldEvent, FormFieldBaseState> {
  FormFieldBaseBloc(super.initialState);

  void isValid(FormFieldEvent event, Emitter<FormFieldBaseState> emit);
}
