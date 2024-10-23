import 'package:biite/auth/state/auth.state.dart';
import 'package:biite/auth/state/login.bloc.dart';
import 'package:biite/auth/widgets/auth.email.field.dart';
import 'package:biite/auth/widgets/auth.password.field.dart';
import 'package:biite/auth/widgets/login.form.button.dart';
import 'package:biite/di/biite.di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:presentation/gen/assets.gen.dart';
import 'package:presentation/gen/colors.gen.dart';
import 'package:presentation/theme/theme.dart';
import 'package:presentation/widgets/auth_text.dart';
import 'package:presentation/widgets/toast.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final loginBloc = getIt.get<LoginBloc>();

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
          child: BlocConsumer<LoginBloc, LoginState>(
            bloc: loginBloc,
            listener: (_, state) => state.maybeMap(
              orElse: () => null,
              success: (_) => context.go("/home"),
              error: (state) => showToast(state.message),
            ),
            builder: (_, state) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Login",
                  style: context.appTheme.textTheme.titleMedium,
                ),
                SizedBox(height: 32.h),
                const AuthEmailField(instance: "login"),
                SizedBox(height: 24.h),
                const AuthPasswordField(instance: "login"),
                SizedBox(height: 24.h),
                LoginFormButton(
                  isLoading: state.maybeMap(orElse: () => false, loading: (_) => true),
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
