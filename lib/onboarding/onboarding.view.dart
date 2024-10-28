import 'package:biite/onboarding/widgets/onboarding.widget.dart';
import 'package:biite/auth/signup.view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:presentation/gen/assets.gen.dart';
import 'package:presentation/gen/colors.gen.dart';
import 'package:presentation/locales.dart';
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
    return Scaffold(
      backgroundColor: ColorName.onboardingBackground,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: currentIndex < 5
              ? DecorationImage(
                  image: AssetImage(
                    [
                      Assets.images.earthBubbles.path,
                      Assets.images.dollarBubbles.path,
                      Assets.images.phoneBubbles.path,
                      Assets.images.plus1Bubbles.path,
                      Assets.images.loveBubbles.path,
                    ][currentIndex],
                  ),
                  fit: BoxFit.cover,
                )
              : null,
        ),
        child: Column(children: [
          Expanded(
            child: PageView(
                controller: _controller,
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                children: <Widget>[
                  OnboardingWidget(
                    descriptionText: onboardingFindProjects,
                    image: Assets.images.earth.path,
                  ),
                  OnboardingWidget(
                    descriptionText: onboardingMakeMoney,
                    image: Assets.images.dollar.path,
                  ),
                  OnboardingWidget(
                    descriptionText: onboardingChatWithOthers,
                    image: Assets.images.phone.path,
                  ),
                  OnboardingWidget(
                    descriptionText: onboardingWorkHard,
                    image: Assets.images.plus1.path,
                  ),
                  OnboardingWidget(
                    descriptionText: onboardingEnjoy,
                    image: Assets.images.love.path,
                  ),
                  const SignupView()
                ]),
          ),
          SmoothPageIndicator(
            controller: _controller, // PageController
            count: 6,
            effect: const JumpingDotEffect(
              dotHeight: 7,
              dotWidth: 7,
              activeDotColor: ColorName.primary,
            ), // your preferred effect
            onDotClicked: (index) {
              _controller.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
            },
          ),
          SizedBox(height: 30.h),
        ]),
      ),
    );
  }
}
