import 'package:biite/core/presentation/state/base.formfield.bloc.dart';
import 'package:biite/core/presentation/state/compensation.field.bloc.dart';
import 'package:biite/core/presentation/state/description.field.bloc.dart';
import 'package:biite/core/presentation/state/form.field.events.dart';
import 'package:biite/core/presentation/state/form.field.state.dart';
import 'package:biite/core/presentation/state/name.field.bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class CreateProjectFormBloc extends FormFieldBaseBloc {
  CreateProjectFormBloc(
    @Named("createProject") this._compensationFieldBloc,
    @Named("createProject") this._descriptionFieldBloc,
    @Named("createProject") this._titleFieldBloc,
  ) : super(const FormFieldBaseState.initial()) {
    on<CreateProjectFormFieldEvent>(isValid);
  }

  final CompensationFieldBloc _compensationFieldBloc;
  final DescriptionFieldBloc _descriptionFieldBloc;
  final NameFieldBloc _titleFieldBloc;

  @override
  void isValid(FormFieldEvent event, Emitter<FormFieldBaseState> emit) {
    if (event is CreateProjectFormFieldEvent) {
      if (_titleFieldBloc.state.maybeWhen(orElse: () => true, valid: (_) => false)) {
        emit(FormFieldBaseState.invalid(message: _titleFieldBloc.getErrorText()));
        return;
      }

      if (_compensationFieldBloc.state.maybeWhen(orElse: () => true, valid: (_) => false)) {
        emit(FormFieldBaseState.invalid(message: _compensationFieldBloc.getErrorText()));
        return;
      }
      if (_descriptionFieldBloc.state.maybeWhen(orElse: () => true, valid: (_) => false)) {
        emit(FormFieldBaseState.invalid(message: _descriptionFieldBloc.getErrorText()));
        return;
      }

      emit(const FormFieldBaseState.valid());
    }
  }
}
