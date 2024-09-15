import 'package:biite/core/di/biite.di.dart';
import 'package:biite/core/presentation/state/field.events.dart';
import 'package:biite/core/presentation/state/field.state.dart';
import 'package:biite/core/presentation/state/password.field.bloc.dart';
import 'package:biite/core/presentation/widgets/biite.form.field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

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
    );
  }

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<PasswordFieldBloc>(instanceName: instance);
    return BlocBuilder<PasswordFieldBloc, PasswordState>(
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
