import 'package:biite/core/app/app.theme.dart';
import 'package:biite/gen/assets.gen.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class InCharge extends StatefulWidget {
  const InCharge({required this.deadline, super.key});
  final String deadline;

  @override
  State<InCharge> createState() => _InChargeState();
}

class _InChargeState extends State<InCharge> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _heightAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _heightAnimation = Tween<double>(begin: 0, end: 300).animate(
      CurvedAnimation(
        curve: Curves.fastOutSlowIn,
        parent: _animationController,
      ),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _heightAnimation,
      builder: (context, child) => Container(
        height: _heightAnimation.value,
        width: double.infinity,
        decoration: const BoxDecoration(color: ColorName.primary),
        child: _heightAnimation.value <= 80
            ? const SizedBox()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    youAreInCharge,
                    style: context.appTheme.textTheme.bodySmall?.copyWith(
                      fontSize: 16,
                      color: ColorName.onboardingBackground,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  if (_heightAnimation.value > 280) SvgPicture.asset(Assets.images.inCharge, height: 200.h)
                ],
              ),
      ),
    );
  }
}
