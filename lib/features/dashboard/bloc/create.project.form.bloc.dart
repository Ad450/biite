import 'package:biite/core/presentation/state/base.formfield.bloc.dart';
import 'package:biite/core/presentation/state/compensation.field.bloc.dart';
import 'package:biite/core/presentation/state/description.field.bloc.dart';
import 'package:biite/core/presentation/state/form.field.events.dart';
import 'package:biite/core/presentation/state/form.field.state.dart';
import 'package:biite/core/presentation/state/name.field.bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class CreateProjectFormBloc extends FormFieldBaseBloc<CreateProjectFormFieldState> {
  CreateProjectFormBloc(
    @Named("createProject") this._compensationFieldBloc,
    @Named("createProject") this._descriptionFieldBloc,
    @Named("createProject") this._titleFieldBloc,
  ) : super(const CreateProjectFormFieldState.initial(isValid: false, message: null)) {
    on<CreateProjectFormFieldEvent>(isValid);
  }

  final CompensationFieldBloc _compensationFieldBloc;
  final DescriptionFieldBloc _descriptionFieldBloc;
  final NameFieldBloc _titleFieldBloc;

  @override
  void isValid(FormFieldEvent event, Emitter<CreateProjectFormFieldState> emit) {
    if (event is CreateProjectFormFieldEvent) {
      if (!_titleFieldBloc.state.isValid) {
        emit(CreateProjectFormFieldState.invalid(isValid: false, message: _titleFieldBloc.state.message));
        return;
      }

      if (!_compensationFieldBloc.state.isValid) {
        emit(CreateProjectFormFieldState.invalid(isValid: false, message: _compensationFieldBloc.state.message));
        return;
      }
      if (!_descriptionFieldBloc.state.isValid) {
        emit(CreateProjectFormFieldState.invalid(isValid: false, message: _descriptionFieldBloc.state.message));
        return;
      }

      emit(const CreateProjectFormFieldState.valid(isValid: true, message: null));
    }
  }
}
