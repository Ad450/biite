import 'package:biite/core/di/biite.di.dart';
import 'package:biite/core/presentation/state/compensation.field.bloc.dart';
import 'package:biite/core/presentation/state/field.events.dart';
import 'package:biite/core/presentation/state/field.state.dart';
import 'package:biite/core/presentation/widgets/biite.textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CompensationField extends StatelessWidget {
  const CompensationField({super.key});

  Widget _buildField(
    String? errorText, {
    required Function(String) onChanged,
    required TextEditingController controller,
  }) {
    return BiiteTextfield(
      controller: controller,
      inputType: TextInputType.number,
      errorText: errorText,
      hintText: "100",
      onChanged: onChanged,
    );
  }

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<CompensationFieldBloc>(instanceName: "createProject");

    return BlocBuilder<CompensationFieldBloc, CompensationState>(
      bloc: bloc,
      builder: (_, state) => state.maybeMap(
        orElse: () => _buildField(
          null,
          onChanged: (text) => bloc.add(CompensationFieldEvent(double.parse(text))),
          controller: bloc.compensationController,
        ),
        invalid: (state) => _buildField(
          state.message,
          onChanged: (text) => bloc.add(CompensationFieldEvent(double.parse(text))),
          controller: bloc.compensationController,
        ),
      ),
    );
  }
}
