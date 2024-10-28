import 'package:biite/dashboard/bloc/project.bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class CreateProjectFormBloc extends FormFieldBaseBloc {
  CreateProjectFormBloc(
    @Named("createProject") this._compensationFieldBloc,
    @Named("createProject") this._descriptionFieldBloc,
    @Named("createProject") this._titleFieldBloc,
    this._projectBloc,
  ) : super(const FormFieldBaseState.initial()) {
    on<CreateProjectFormFieldEvent>(isValid);
  }

  final CompensationFieldBloc _compensationFieldBloc;
  final DescriptionFieldBloc _descriptionFieldBloc;
  final NameFieldBloc _titleFieldBloc;
  final ProjectBloc _projectBloc;

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
      _projectBloc.createProject();
    }
  }
}
