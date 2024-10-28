import 'package:biite/di/biite.di.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:presentation/widgets/textfield.dart';

class PropositionCompensationField extends StatelessWidget {
  const PropositionCompensationField({super.key});

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
    final bloc = getIt.get<CompensationFieldBloc>(instanceName: "bid");

    return BlocBuilder<CompensationFieldBloc, FieldState>(
      bloc: bloc,
      builder: (_, state) => state.maybeMap(
        orElse: () => _buildField(
          null,
          onChanged: (text) => bloc.add(CompensationFieldEvent(double.parse(text.isEmpty ? "0" : text))),
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
