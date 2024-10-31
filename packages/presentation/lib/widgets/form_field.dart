import 'package:flutter/material.dart';
import 'package:presentation/gen/colors.gen.dart';
import 'package:presentation/gen/fonts.gen.dart';
import 'package:presentation/theme/theme.dart';

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
          keyboardType: inputType,
          controller: controller,
          onChanged: onChanged,
          keyboardAppearance: Brightness.dark,
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
              color: ColorName.text,
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
      ],
    );
  }
}
