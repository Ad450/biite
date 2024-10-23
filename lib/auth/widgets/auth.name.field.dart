import 'package:biite/di/biite.di.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:presentation/widgets/form_field.dart';

class AuthNameField extends StatelessWidget {
  const AuthNameField({super.key});

  Widget _buildField(
    String? errorText, {
    required Function(String) onChanged,
    required TextEditingController controller,
  }) {
    return BiiteFormField(
      controller: controller,
      inputType: TextInputType.text,
      errorText: errorText,
      hintText: "FullName",
      onChanged: onChanged,
    );
  }

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<NameFieldBloc>(instanceName: "signup");
    return BlocBuilder<NameFieldBloc, FieldState>(
      bloc: bloc,
      builder: (_, state) => state.maybeMap(
        orElse: () => _buildField(
          null,
          onChanged: (text) => bloc.add(NameFieldEvent(text)),
          controller: bloc.nameController,
        ),
        invalid: (state) => _buildField(
          state.message,
          onChanged: (text) => bloc.add(NameFieldEvent(text)),
          controller: bloc.nameController,
        ),
      ),
    );
  }
}