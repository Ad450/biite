import 'package:biite/core/app/app.theme.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BiiteMultilineTextfield extends StatelessWidget {
  const BiiteMultilineTextfield({required this.controller, super.key});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 160.h,
      child: TextField(
        controller: controller,
        maxLines: 7,
        minLines: 5,
        keyboardType: TextInputType.multiline,
        // expands: true,
        style: context.appTheme.textTheme.bodySmall?.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: ColorName.onBackground,
        ),
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          filled: true,
          fillColor: ColorName.multiline,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 17),
          hintText: "Message",
          hintStyle: const TextStyle(
            color: ColorName.text,
            fontSize: 16,
            fontFamily: FontFamily.publicSans,
            fontWeight: FontWeight.normal,
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(width: 0, style: BorderStyle.none),
            borderRadius: BorderRadius.circular(7),
          ),
        ),
      ),
    );
  }
}
