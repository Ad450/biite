import 'package:biite/di/biite.di.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:presentation/widgets/textfield.dart';

class TitleField extends StatelessWidget {
  const TitleField({super.key});

  Widget _buildField(
    String? errorText, {
    required Function(String) onChanged,
    required TextEditingController controller,
  }) {
    return BiiteTextfield(
      controller: controller,
      inputType: TextInputType.text,
      errorText: errorText,
      hintText: "Title",
      onChanged: onChanged,
    );
  }

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<NameFieldBloc>(instanceName: "createProject");

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
