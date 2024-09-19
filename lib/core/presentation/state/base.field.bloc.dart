import 'package:biite/core/presentation/state/field.events.dart';
import 'package:biite/core/presentation/state/field.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// [FieldBaseBloc] forms the base class for all field blocs
/// It extends [Bloc] which takes in the [FieldEvent] and a
///  [FieldState] is the state object emitted
/// Subclasses will implement [isValid] providing all the validations
abstract class FieldBaseBloc extends Bloc<FieldEvent, FieldState> {
  FieldBaseBloc(super.initialState);

  void isValid(FieldEvent event, Emitter<FieldState> emit);

  // Get error messages for subclasses
  String getErrorText() {
    return state.maybeWhen(
      orElse: () => "Fill required fields",
      invalid: (message) => message!,
    );
  }
}
