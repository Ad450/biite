import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/di/biite.di.dart';
import 'package:biite/core/presentation/widgets/biite.back.dart';
import 'package:biite/core/presentation/widgets/biite.dialog.dart';
import 'package:biite/features/auth/state/auth.state.dart';
import 'package:biite/features/auth/state/signup.bloc.dart';
import 'package:biite/features/profile/widget/edit.profile.avatar.dart';
import 'package:biite/features/profile/widget/profile.button.dart';
import 'package:biite/features/profile/widget/profile.description.field.dart';
import 'package:biite/features/profile/widget/profile.name.field.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.onboardingBackground,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Align(alignment: Alignment.centerLeft, child: BiiteBack()),
              SizedBox(height: 20.h),
              const Align(alignment: Alignment.centerRight, child: _Logout()),
              SizedBox(height: 40.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Change profile picture",
                          style: context.appTheme.textTheme.bodySmall?.copyWith(
                            fontSize: 16,
                            color: ColorName.text,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),
                      const Align(
                        alignment: Alignment.center,
                        child: EditProfileAvatar(),
                      ),
                      SizedBox(height: 48.h),
                      Text(
                        "Full name",
                        style: context.appTheme.textTheme.bodySmall?.copyWith(
                          fontSize: 16,
                          color: ColorName.text,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 16.h),
                      const ProfileNameField(),
                      SizedBox(height: 16.h),
                      Text(
                        "About me",
                        style: context.appTheme.textTheme.bodySmall?.copyWith(
                          fontSize: 16,
                          color: ColorName.text,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 16.h),
                      const ProfileDescriptionField(),
                      SizedBox(height: 69.h),
                      const ProfileButton(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Logout extends StatelessWidget {
  const _Logout();

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<SignupBloc>();

    return BlocListener<SignupBloc, SignupState>(
      bloc: bloc,
      listener: (_, state) => state.maybeMap(
        orElse: () => null,
        unAuthenticated: (_) => context.go("/"),
      ),
      child: GestureDetector(
        onTap: () => showBiiteLogoutDialog(context, bloc),
        child: Text(
          'LOGOUT',
          style: context.appTheme.textTheme.bodySmall?.copyWith(
            fontSize: 16,
            color: ColorName.primary,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
