import 'package:biite/gen/colors.gen.dart';
import 'package:biite/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BiiteFormField extends StatelessWidget {
  const BiiteFormField({required this.controller, this.hintText, super.key});

  final TextEditingController controller;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52.h,
      width: double.infinity,
      child: TextField(
        controller: controller,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          filled: true,
          fillColor: ColorName.textfield,
          hintStyle: const TextStyle(
            color: ColorName.hintColor,
            fontWeight: FontWeight.normal,
            fontFamily: FontFamily.publicSans,
            fontSize: 16,
            // textBaseline: TextBaseline.alphabetic
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          hintText: hintText,
          border: OutlineInputBorder(
            borderSide: const BorderSide(width: 0, style: BorderStyle.none),
            borderRadius: BorderRadius.circular(7),
          ),
        ),
      ),
    );
  }
}
