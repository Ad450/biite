import 'package:biite/core/presentation/state/field.events.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// [FieldBaseBloc] forms the base class for all field blocs
/// It extends [Bloc] which takes in the [FieldEvent] and a
///  [T] is the state object emitted
/// Subclasses will implement [isValid] providing all the validations
abstract class FieldBaseBloc<T> extends Bloc<FieldEvent, T> {
  FieldBaseBloc(super.initialState);

  void isValid(FieldEvent event, Emitter<T> emit);
}
