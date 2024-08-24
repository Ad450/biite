import 'package:biite/gen/assets.gen.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTextfield extends StatelessWidget {
  const SearchTextfield({required this.controller, super.key});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      shadowColor: ColorName.background,
      child: SizedBox(
        height: 45.h,
        width: double.infinity,
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            fillColor: ColorName.onboardingBackground,
            filled: true,
            suffixIcon: Image.asset(Assets.images.searchIcon.path),
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
    );
  }
}
