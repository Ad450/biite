import 'package:biite/core/presentation/state/base.field.bloc.dart';
import 'package:biite/core/presentation/state/field.events.dart';
import 'package:biite/core/presentation/state/field.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class PasswordFieldBloc extends FieldBaseBloc<PasswordState> {
  PasswordFieldBloc() : super(const PasswordState.initial(data: "", message: null, isValid: false)) {
    on<PasswordFieldEvent>(isValid);
  }

  @override
  void isValid(FieldEvent event, Emitter<PasswordState> emit) {
    if (event is PasswordFieldEvent) {
      if (event.password == null) {
        emit(PasswordState.invalid(data: state.data, message: "email cant not be null", isValid: false));
        return;
      }

      if (event.password!.length < 6) {
        emit(PasswordState.invalid(data: state.data, message: "invalid password", isValid: false));
        return;
      }

      emit(PasswordState.valid(data: event.password!, message: null, isValid: true));
    }
  }
}
