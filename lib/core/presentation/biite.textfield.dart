import 'package:biite/core/app/app.theme.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class BiiteTextfield extends StatelessWidget {
  const BiiteTextfield({
    required this.controller,
    this.minLines,
    this.maxLines,
    this.hintText,
    this.inputType,
    super.key,
  });

  final TextEditingController controller;
  final int? minLines;
  final int? maxLines;
  final String? hintText;
  final TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines ?? 1,
      minLines: minLines ?? 1,
      keyboardType: inputType ?? TextInputType.number,
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
        hintText: hintText ?? "100",
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
    );
  }
}