import 'package:biite/di/biite.di.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:presentation/widgets/form_field.dart';

class AuthPasswordField extends StatelessWidget {
  const AuthPasswordField({required this.instance, super.key});

  final String instance;

  Widget _buildField(
    String? errorText, {
    required Function(String) onChanged,
    required TextEditingController controller,
  }) {
    return BiiteFormField(
      controller: controller,
      inputType: TextInputType.name,
      errorText: errorText,
      hintText: "Password",
      onChanged: onChanged,
      obscureText: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<PasswordFieldBloc>(instanceName: instance);
    return BlocBuilder<PasswordFieldBloc, FieldState>(
      bloc: bloc,
      builder: (_, state) => state.maybeMap(
        orElse: () => _buildField(
          null,
          onChanged: (text) => bloc.add(PasswordFieldEvent(text)),
          controller: bloc.passwordController,
        ),
        invalid: (state) => _buildField(
          state.message,
          onChanged: (text) => bloc.add(PasswordFieldEvent(text)),
          controller: bloc.passwordController,
        ),
      ),
    );
  }
}
