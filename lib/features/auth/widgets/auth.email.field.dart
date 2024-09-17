import 'package:biite/core/di/biite.di.dart';
import 'package:biite/core/presentation/state/email.field.bloc.dart';
import 'package:biite/core/presentation/state/field.events.dart';
import 'package:biite/core/presentation/state/field.state.dart';
import 'package:biite/core/presentation/widgets/biite.form.field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
