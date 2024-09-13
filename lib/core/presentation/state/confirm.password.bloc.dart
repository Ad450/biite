import 'package:biite/core/presentation/state/base.field.bloc.dart';
import 'package:biite/core/presentation/state/field.events.dart';
import 'package:biite/core/presentation/state/field.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class ConfirmPasswordFieldBloc extends FieldBaseBloc<ConfirmPasswordState> {
  ConfirmPasswordFieldBloc() : super(const ConfirmPasswordState.initial(data: "", message: null, isValid: false)) {
    on<ConfirmPasswordFieldEvent>(isValid);
  }

  @override
  void isValid(FieldEvent event, Emitter<ConfirmPasswordState> emit) {
    if (event is PasswordFieldEvent) {
      if (event.password == null) {
        emit(ConfirmPasswordState.invalid(data: state.data, message: "email cant not be null", isValid: false));
        return;
      }

      if (event.password!.length < 6) {
        emit(ConfirmPasswordState.invalid(data: state.data, message: "invalid password", isValid: false));
        return;
      }

      emit(ConfirmPasswordState.valid(data: event.password!, message: null, isValid: true));
    }
  }
}
