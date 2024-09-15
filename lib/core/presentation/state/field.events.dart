/// These are all the different textfield events that are sent
/// to their respective [FieldBloc]
abstract class FieldEvent {}

class EmailFieldEvent extends FieldEvent {
  final String? email;
  EmailFieldEvent(this.email);
}

class PasswordFieldEvent extends FieldEvent {
  final String? password;
  PasswordFieldEvent(this.password);
}

class ConfirmPasswordFieldEvent extends FieldEvent {
  final String? password;
  ConfirmPasswordFieldEvent(this.password);
}

class NameFieldEvent extends FieldEvent {
  final String? name;
  NameFieldEvent(this.name);
}

class CompensationFieldEvent extends FieldEvent {
  final double? rate;
  CompensationFieldEvent(this.rate);
}

class DescriptionFieldEvent extends FieldEvent {
  final String? description;
  DescriptionFieldEvent(this.description);
}

class TitleFieldEvent extends FieldEvent {}
