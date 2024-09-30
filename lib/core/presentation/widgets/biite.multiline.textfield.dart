import 'package:biite/core/app/app.theme.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class BiiteMultilineTextfield extends StatelessWidget {
  const BiiteMultilineTextfield({
    required this.onChanged,
    required this.controller,
    this.errorText,
    this.inputType,
    this.minLines,
    this.maxLines,
    this.hintText,
    super.key,
  });

  final TextEditingController controller;
  final int? minLines;
  final int? maxLines;
  final String? hintText;
  final TextInputType? inputType;
  final String? errorText;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 160.h,
      child: TextField(
        controller: controller,
        maxLines: maxLines ?? 7,
        minLines: minLines ?? 5,
        onChanged: onChanged,
        keyboardType: TextInputType.multiline,
        keyboardAppearance: Brightness.dark,
        onTapOutside: (PointerDownEvent event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
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
          hintText: hintText ?? "Message",
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
          errorText: errorText,
          errorStyle: context.appTheme.textTheme.bodySmall?.copyWith(fontSize: 12, color: Colors.red),
        ),
      ),
    );
  }
}
