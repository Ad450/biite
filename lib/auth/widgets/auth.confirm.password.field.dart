import 'package:biite/di/biite.di.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:presentation/widgets/form_field.dart';

class AuthConfirmPasswordField extends StatelessWidget {
  const AuthConfirmPasswordField({super.key});

  Widget _buildField(
    String? errorText, {
    required Function(String) onChanged,
    required TextEditingController controller,
  }) {
    return BiiteFormField(
      controller: controller,
      inputType: TextInputType.name,
      errorText: errorText,
      hintText: "Confirm password",
      onChanged: onChanged,
      obscureText: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<ConfirmPasswordFieldBloc>();
    return BlocBuilder<ConfirmPasswordFieldBloc, FieldState>(
      bloc: bloc,
      builder: (_, state) => state.maybeMap(
        orElse: () => _buildField(
          null,
          onChanged: (text) => bloc.add(ConfirmPasswordFieldEvent(text)),
          controller: bloc.confirmPasswordController,
        ),
        invalid: (state) => _buildField(
          state.message,
          onChanged: (text) => bloc.add(ConfirmPasswordFieldEvent(text)),
          controller: bloc.confirmPasswordController,
        ),
      ),
    );
  }
}
