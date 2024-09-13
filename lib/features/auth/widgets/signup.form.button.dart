import 'package:biite/core/di/biite.di.dart';
import 'package:biite/core/presentation/state/form.field.events.dart';
import 'package:biite/core/presentation/state/form.field.state.dart';
import 'package:biite/core/presentation/widgets/biite.button.dart';
import 'package:biite/core/presentation/widgets/biite.toast.dart';
import 'package:biite/features/auth/state/auth.bloc.dart';
import 'package:biite/features/auth/state/auth.events.dart';
import 'package:biite/features/auth/state/signup.form.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupFormButton extends StatelessWidget {
  const SignupFormButton({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<SignupFormBloc>();
    final authBloc = getIt.get<AuthBloc>();

    return BlocConsumer<SignupFormBloc, SignupFormFieldState>(
      bloc: bloc,
      listener: (_, state) => state.maybeMap(
        orElse: () {
          return;
        },
        valid: (state) => authBloc.add(SignupEvent()),
        invalid: (state) => showToast(state.message!),
      ),
      builder: (_, state) => state.maybeMap(
        orElse: () => BiiteTextButton(
          onPressed: () => bloc.add(SignupFormFieldEvent()),
          text: signup,
        ),
      ),
    );
  }
}
