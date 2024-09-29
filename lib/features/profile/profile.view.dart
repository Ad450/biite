import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/di/biite.di.dart';
import 'package:biite/features/profile/state/profile.bloc.dart';
import 'package:biite/features/profile/state/profile.state.dart';
import 'package:biite/features/profile/widget/profile.appbar.dart';
import 'package:biite/features/profile/widget/profile.avatar.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.onboardingBackground,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocBuilder<ProfileBloc, ProfileState>(
          bloc: getIt.get<ProfileBloc>()..fetch(),
          builder: (_, state) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 56.h),
              const ProfileAppbar(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 24.h),
                      ProfileAvatar(state: state),
                      SizedBox(height: 24.h),
                      Text(
                        "Description",
                        style: context.appTheme.textTheme.titleMedium?.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        state.maybeMap(
                          orElse: () => "Let others know more about you!",
                          fetch: (state) => state.user.description ?? "Let others know more about you!",
                        ),
                        style: context.appTheme.textTheme.bodySmall?.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 32.h),
                      // const ProfileReview(),
                      // SizedBox(height: 32.h),
                      // Text(
                      //   "Portfolio",
                      //   style: context.appTheme.textTheme.titleMedium?.copyWith(
                      //     fontSize: 20,
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      // ),
                      // Wrap(
                      //   runAlignment: WrapAlignment.start,
                      //   spacing: 10,
                      //   runSpacing: 10,
                      //   children: List.generate(
                      //     10,
                      //     (index) => Portfolio(image: Assets.images.portfolio.path),
                      //   ),
                      // ),
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
