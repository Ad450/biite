import 'package:biite/di/biite.di.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:presentation/widgets/multiline_textfield.dart';

class ProfileDescriptionField extends StatelessWidget {
  const ProfileDescriptionField({super.key});

  Widget _buildField(
    String? errorText, {
    required Function(String) onChanged,
    required TextEditingController controller,
  }) {
    return BiiteMultilineTextfield(
      controller: controller,
      inputType: TextInputType.text,
      errorText: errorText,
      hintText: "Description",
      onChanged: onChanged,
    );
  }

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<DescriptionFieldBloc>(instanceName: "profile");

    return BlocBuilder<DescriptionFieldBloc, FieldState>(
      bloc: bloc,
      builder: (_, state) => state.maybeMap(
        orElse: () => _buildField(
          null,
          onChanged: (text) => bloc.add(DescriptionFieldEvent(text)),
          controller: bloc.descriptionController,
        ),
        invalid: (state) => _buildField(
          state.message,
          onChanged: (text) => bloc.add(DescriptionFieldEvent(text)),
          controller: bloc.descriptionController,
        ),
      ),
    );
  }
}
