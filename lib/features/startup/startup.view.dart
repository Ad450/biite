import 'package:biite/biite.dart';
import 'package:biite/core/di/biite.di.dart';
import 'package:biite/core/presentation/widgets/biite.auth.text.dart';
import 'package:biite/core/presentation/widgets/biite.button.dart';
import 'package:biite/features/auth/state/auth.state.dart';
import 'package:biite/features/auth/state/signup.bloc.dart';
import 'package:biite/features/home/home.view.dart';
import 'package:biite/gen/assets.gen.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class StartupView extends StatelessWidget {
  const StartupView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // or any other color
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
    );

    return BlocBuilder<SignupBloc, SignupState>(
      bloc: getIt.get<SignupBloc>()..checkUserExistence(),
      builder: (_, state) => state.maybeMap(
        loading: (state) => const BiiteInitial(),
        authenticated: (state) => const HomeView(),
        orElse: () => Container(
          constraints: const BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.images.bubble1.path),
              fit: BoxFit.cover,
            ),
            color: ColorName.onboardingBackground,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 66.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 218.h, bottom: 257.h),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      biite,
                      style: theme.textTheme.displayLarge,
                    ),
                  ),
                ),
                BiiteTextButton(
                  onPressed: () => context.go("/onboarding"),
                  text: discoverText,
                ),
                SizedBox(height: 37.h),
                BiiteAuthText(text: login, onTap: () => context.go("/login")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
