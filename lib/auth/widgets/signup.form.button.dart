import 'package:biite/auth/state/signup.form.bloc.dart';
import 'package:biite/di/biite.di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:presentation/locales.dart';
import 'package:presentation/widgets/button.dart';
import 'package:presentation/widgets/toast.dart';

class SignupFormButton extends StatelessWidget {
  const SignupFormButton({required this.isLoading, super.key});

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final signupBloc = getIt.get<SignupFormBloc>();

    return BlocListener<SignupFormBloc, FormFieldBaseState>(
      bloc: signupBloc,
      listener: (_, state) => state.maybeMap(
        orElse: () => null,
        invalid: (state) => showToast(state.message!),
      ),
      // child: BiiteTextButton(
      //   onPressed: () => signupBloc.add(SignupFormFieldEvent()),
      //   text: signup,
      // ),
      child: LoadingButton(
        isLoading: isLoading,
        buttonText: signup,
        onTap: () => signupBloc.add(SignupFormFieldEvent()),
      ),
    );
  }
}
