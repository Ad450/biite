import 'package:flutter/material.dart';
import 'package:presentation/gen/colors.gen.dart';
import 'package:presentation/gen/fonts.gen.dart';
import 'package:presentation/theme/theme.dart';

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
    return Column(
      children: <Widget>[
        if (errorText != null)
          Text(
            errorText!,
            style: context.appTheme.textTheme.bodySmall?.copyWith(
              fontSize: 12,
              color: Colors.red,
            ),
          ),
        TextField(
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
          ),
        ),
      ],
    );
  }
}
