import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/di/biite.di.dart';
import 'package:biite/core/presentation/widgets/biite.auth.text.dart';
import 'package:biite/core/presentation/widgets/biite.toast.dart';
import 'package:biite/features/auth/state/auth.bloc.dart';
import 'package:biite/features/auth/state/auth.state.dart';
import 'package:biite/features/auth/widgets/auth.email.field.dart';
import 'package:biite/features/auth/widgets/auth.password.field.dart';
import 'package:biite/features/auth/widgets/login.form.button.dart';
import 'package:biite/gen/assets.gen.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final authBloc = getIt.get<AuthBloc>();

    return Scaffold(
      backgroundColor: ColorName.onboardingBackground,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Assets.images.loginBubbles.path,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: BlocConsumer<AuthBloc, AuthState>(
            bloc: authBloc,
            listener: (_, state) => state.maybeMap(
              orElse: () => null,
              signinSuccess: (_) => context.go("/home"),
              error: (state) => showToast(state.message!),
            ),
            builder: (_, state) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Login",
                  style: context.appTheme.textTheme.titleMedium,
                ),
                SizedBox(height: 32.h),
                const AuthEmailField(),
                SizedBox(height: 24.h),
                const AuthPasswordField(),
                SizedBox(height: 24.h),
                state.maybeMap(
                  orElse: () => const LoginFormButton(),
                  signinLoading: (_) => const CupertinoActivityIndicator(),
                ),
                SizedBox(height: 24.h),
                BiiteAuthText(
                  onTap: () => context.go("/"),
                  gettingStarted: "Getting Started ? ",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
