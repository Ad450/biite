import 'package:biite/core/di/biite.di.dart';
import 'package:biite/core/presentation/state/description.field.bloc.dart';
import 'package:biite/core/presentation/state/field.events.dart';
import 'package:biite/core/presentation/state/field.state.dart';
import 'package:biite/core/presentation/widgets/biite.multiline.textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectDescriptionField extends StatelessWidget {
  const ProjectDescriptionField({super.key});

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
    final bloc = getIt.get<DescriptionFieldBloc>(instanceName: "createProject");

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
