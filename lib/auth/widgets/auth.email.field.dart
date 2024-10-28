import 'package:biite/di/biite.di.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:presentation/widgets/form_field.dart';

class AuthEmailField extends StatelessWidget {
  const AuthEmailField({required this.instance, super.key});

  final String instance;

  Widget _buildField(
    String? errorText, {
    required Function(String) onChanged,
    required TextEditingController controller,
  }) {
    return BiiteFormField(
      controller: controller,
      inputType: TextInputType.emailAddress,
      errorText: errorText,
      hintText: "Email",
      onChanged: onChanged,
    );
  }

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<EmailFieldBloc>(instanceName: instance);

    return BlocBuilder<EmailFieldBloc, FieldState>(
      bloc: bloc,
      builder: (_, state) => state.maybeMap(
        orElse: () => _buildField(
          null,
          onChanged: (text) => bloc.add(EmailFieldEvent(text)),
          controller: bloc.controller,
        ),
        invalid: (state) => _buildField(
          state.message,
          onChanged: (text) => bloc.add(EmailFieldEvent(text)),
          controller: bloc.controller,
        ),
      ),
    );
  }
}
