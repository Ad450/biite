/// [FormFieldEvent] forms the base class of all form field events
abstract class FormFieldEvent {}

class SignupFormFieldEvent extends FormFieldEvent {}

class LoginFormFieldEvent extends FormFieldEvent {}

class CreateProjectFormFieldEvent extends FormFieldEvent {}
