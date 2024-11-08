import 'package:biite/auth/state/auth.state.dart';
import 'package:biite/auth/state/signup.bloc.dart';
import 'package:biite/auth/widgets/auth.confirm.password.field.dart';
import 'package:biite/auth/widgets/auth.email.field.dart';
import 'package:biite/auth/widgets/auth.name.field.dart';
import 'package:biite/auth/widgets/auth.password.field.dart';
import 'package:biite/auth/widgets/signup.form.button.dart';
import 'package:biite/di/biite.di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:presentation/gen/assets.gen.dart';
import 'package:presentation/gen/colors.gen.dart';
import 'package:presentation/locales.dart';
import 'package:presentation/widgets/auth_text.dart';
import 'package:presentation/widgets/toast.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final authBloc = getIt.get<SignupBloc>();

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
            child: BlocConsumer<SignupBloc, SignupState>(
              bloc: authBloc,
              listener: (_, state) => state.maybeMap(
                orElse: () => null,
                success: (_) {
                  showToast("Verify your email address");
                  context.go("/login");
                  return;
                },
                error: (state) => showToast(state.message),
              ),
              builder: (_, state) => IgnorePointer(
                ignoring: state.maybeMap(orElse: () => false, loading: (_) => true),
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
                    const AuthEmailField(instance: "signup"),
                    SizedBox(height: 24.h),
                    const AuthPasswordField(instance: "signup"),
                    SizedBox(height: 24.h),
                    const AuthConfirmPasswordField(),
                    SizedBox(height: 102.h),
                    SignupFormButton(
                      isLoading: state.maybeMap(orElse: () => false, loading: (_) => true),
                    ),
                    SizedBox(height: 40.h),
                    BiiteAuthText(text: login, onTap: () => context.push("/login"))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
