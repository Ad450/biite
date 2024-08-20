import 'package:biite/gen/assets.gen.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final _assets = [
  Assets.images.earth.path,
  Assets.images.dollar.path,
  Assets.images.phone.path,
  Assets.images.plus1.path,
  Assets.images.love.path,
];

final _descriptionText = [
  "Find projects from companies everywhere in the word",
  "Make money while working on awesome projects",
  "Chat with others freelancers and develop your network",
  "Work hard and level up!",
  "Enjoy your progress!",
];

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
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _controller,
      itemCount: 5,
      onPageChanged: (value) {
        setState(() {
          currentIndex = value;
        });
      },
      itemBuilder: (context, index) => _OnboardingViewWidget(
        descriptionText: _descriptionText[currentIndex],
        image: _assets[currentIndex],
      ),
    );
  }
}

class _OnboardingViewWidget extends StatelessWidget {
  const _OnboardingViewWidget({
    required this.descriptionText,
    required this.image,
    super.key,
  });

  final String descriptionText;
  final String image;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.bubble1.path),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 66),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 48.h),
              Text(
                biite,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 91.h),
              SizedBox(height: 370.h, width: 370.w, child: Image.asset(image)),
              SizedBox(height: 91.h),
              Text(
                descriptionText,
                style: theme.textTheme.bodyLarge?.copyWith(
                  fontSize: 18,
                  color: ColorName.onBackground,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
