import 'package:biite/features/onboarding/widgets/onboarding.widget.dart';
import 'package:biite/gen/assets.gen.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  late PageController _controller;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      PageView(
          controller: _controller,
          onPageChanged: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          children: <OnboardingWidget>[
            OnboardingWidget(
              descriptionText: onboardingFindProjects,
              image: Assets.images.earth.path,
              backgroundImage: Assets.images.earthBubbles.path,
            ),
            OnboardingWidget(
              descriptionText: onboardingMakeMoney,
              image: Assets.images.dollar.path,
              backgroundImage: Assets.images.dollarBubbles.path,
            ),
            OnboardingWidget(
              descriptionText: onboardingChatWithOthers,
              image: Assets.images.phone.path,
              backgroundImage: Assets.images.phoneBubbles.path,
            ),
            OnboardingWidget(
              descriptionText: onboardingWorkHard,
              image: Assets.images.plus1.path,
              backgroundImage: Assets.images.plus1Bubbles.path,
            ),
            OnboardingWidget(
              descriptionText: onboardingEnjoy,
              image: Assets.images.love.path,
              backgroundImage: Assets.images.loveBubbles.path,
            ),
          ]),
      Positioned(
        bottom: 72.h,
        left: 161.w,
        child: SmoothPageIndicator(
            controller: _controller, // PageController
            count: 5,
            effect: const JumpingDotEffect(
              dotHeight: 7,
              dotWidth: 7,
              activeDotColor: ColorName.primary,
            ), // your preferred effect
            onDotClicked: (index) {
              setState(() {
                currentIndex = index;
              });
            }),
      )
    ]);
  }
}
