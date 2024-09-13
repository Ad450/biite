import 'package:biite/core/di/biite.di.dart';
import 'package:biite/core/presentation/widgets/biite.auth.text.dart';
import 'package:biite/core/presentation/widgets/biite.toast.dart';
import 'package:biite/features/auth/state/auth.bloc.dart';
import 'package:biite/features/auth/state/auth.state.dart';
import 'package:biite/features/auth/widgets/auth.confirm.password.field.dart';
import 'package:biite/features/auth/widgets/auth.email.field.dart';
import 'package:biite/features/auth/widgets/auth.name.field.dart';
import 'package:biite/features/auth/widgets/auth.password.field.dart';
import 'package:biite/features/auth/widgets/signup.form.button.dart';
import 'package:biite/gen/assets.gen.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final authBloc = getIt.get<AuthBloc>();

    return Scaffold(
      backgroundColor: ColorName.onboardingBackground,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Assets.images.loginBubbles.path,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 120.h),
                Text(
                  signup,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 32.h),
                const AuthNameField(),
                SizedBox(height: 24.h),
                const AuthEmailField(),
                SizedBox(height: 24.h),
                const AuthPasswordField(),
                SizedBox(height: 24.h),
                const AuthConfirmPasswordField(),
                SizedBox(height: 102.h),
                BlocConsumer<AuthBloc, AuthState>(
                  bloc: authBloc,
                  listener: (_, state) => state.maybeMap(
                    orElse: () => null,
                    signupSuccess: (_) => context.go("/home"),
                    error: (state) => showToast(state.message!),
                  ),
                  builder: (_, state) => state.maybeMap(
                    orElse: () => const SignupFormButton(),
                    signupLoading: (_) => const CircularProgressIndicator(),
                  ),
                ),
                SizedBox(height: 40.h),
                BiiteAuthText(text: login, onTap: () => context.push("/login"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
