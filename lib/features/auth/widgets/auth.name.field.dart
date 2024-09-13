import 'package:biite/core/di/biite.di.dart';
import 'package:biite/core/presentation/state/field.events.dart';
import 'package:biite/core/presentation/state/field.state.dart';
import 'package:biite/core/presentation/state/name.field.bloc.dart';
import 'package:biite/core/presentation/widgets/biite.textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthNameField extends StatelessWidget {
  const AuthNameField({super.key});

  Widget _buildField(String? errorText, {required Function(String) onChanged}) {
    return BiiteTextfield(
      controller: TextEditingController(),
      inputType: TextInputType.name,
      errorText: errorText,
      hintText: "FullName",
      onChanged: onChanged,
    );
  }

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<NameFieldBloc>();
    return BlocBuilder<NameFieldBloc, NameState>(
      bloc: bloc,
      builder: (_, state) => state.maybeMap(
        orElse: () => _buildField(
          null,
          onChanged: (text) => bloc.add(NameFieldEvent(text)),
        ),
        invalid: (state) => _buildField(
          state.message,
          onChanged: (text) => bloc.add(NameFieldEvent(text)),
        ),
      ),
    );
  }
}
