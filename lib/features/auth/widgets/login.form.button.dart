import 'package:biite/core/di/biite.di.dart';
import 'package:biite/core/presentation/state/form.field.events.dart';
import 'package:biite/core/presentation/state/form.field.state.dart';
import 'package:biite/core/presentation/widgets/biite.button.dart';
import 'package:biite/core/presentation/widgets/biite.toast.dart';
import 'package:biite/features/auth/state/login.form.bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginFormButton extends StatelessWidget {
  const LoginFormButton({super.key});

  @override
  Widget build(BuildContext context) {
    final loginBloc = getIt.get<LoginFormBloc>();
    // final authBloc = getIt.get<AuthBloc>();

    return BlocListener<LoginFormBloc, FormFieldBaseState>(
      bloc: loginBloc,
      listenWhen: (previous, current) => true,
      listener: (_, state) => state.maybeMap(
        orElse: () => null,
        // valid: (state) => authBloc.add(LoginEvent()),
        invalid: (state) => showToast(state.message!),
      ),
      child: BiiteTextButton(
        onPressed: () => loginBloc.add(LoginFormFieldEvent()),
        text: "Login",
      ),
    );
  }
}
