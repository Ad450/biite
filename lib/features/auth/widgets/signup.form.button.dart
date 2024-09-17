import 'package:biite/core/di/biite.di.dart';
import 'package:biite/core/presentation/state/form.field.events.dart';
import 'package:biite/core/presentation/state/form.field.state.dart';
import 'package:biite/core/presentation/widgets/biite.button.dart';
import 'package:biite/core/presentation/widgets/biite.toast.dart';
import 'package:biite/features/auth/state/auth.bloc.dart';
import 'package:biite/features/auth/state/auth.events.dart';
import 'package:biite/features/auth/state/signup.form.bloc.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupFormButton extends StatelessWidget {
  const SignupFormButton({super.key});

  @override
  Widget build(BuildContext context) {
    final signupBloc = getIt.get<SignupFormBloc>();
    final authBloc = getIt.get<AuthBloc>();

    return BlocListener<SignupFormBloc, FormFieldBaseState>(
      bloc: signupBloc,
      listener: (_, state) => state.maybeMap(
        orElse: () => null,
        valid: (state) => authBloc.add(SignupEvent()),
        invalid: (state) => showToast(state.message!),
      ),
      child: BiiteTextButton(
        onPressed: () => signupBloc.add(SignupFormFieldEvent()),
        text: signup,
      ),
    );
  }
}
