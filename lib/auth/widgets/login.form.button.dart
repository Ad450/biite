import 'package:biite/auth/state/login.form.bloc.dart';
import 'package:biite/di/biite.di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:presentation/widgets/button.dart';
import 'package:presentation/widgets/toast.dart';

class LoginFormButton extends StatelessWidget {
  const LoginFormButton({required this.isLoading, super.key});

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final loginBloc = getIt.get<LoginFormBloc>();

    return BlocListener<LoginFormBloc, FormFieldBaseState>(
      bloc: loginBloc,
      listenWhen: (previous, current) => true,
      listener: (_, state) => state.maybeMap(
        orElse: () => null,
        invalid: (state) => showToast(state.message!),
      ),
      child: LoadingButton(
        isLoading: isLoading,
        buttonText: "Login",
        onTap: () => loginBloc.add(LoginFormFieldEvent()),
      ),
    );
  }
}
