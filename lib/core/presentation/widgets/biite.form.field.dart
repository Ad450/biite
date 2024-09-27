import 'package:biite/core/app/app.theme.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BiiteFormField extends StatelessWidget {
  const BiiteFormField({
    required this.controller,
    required this.onChanged,
    this.hintText,
    this.errorText,
    this.inputType,
    this.obscureText,
    super.key,
  });

  final TextEditingController controller;
  final String? hintText;
  final Function(String) onChanged;
  final TextInputType? inputType;
  final String? errorText;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52.h,
      width: double.infinity,
      child: TextField(
        keyboardType: inputType,
        controller: controller,
        onChanged: onChanged,
        textAlignVertical: TextAlignVertical.center,
        style: context.appTheme.textTheme.bodySmall?.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: ColorName.onBackground,
        ),
        obscureText: obscureText ?? false,
        onTapOutside: (PointerDownEvent event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
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
          errorText: errorText,
          errorStyle: context.appTheme.textTheme.bodySmall?.copyWith(
            color: Colors.red,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
