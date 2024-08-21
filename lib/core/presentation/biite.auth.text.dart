import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';

class BiiteAuthText extends StatelessWidget {
  const BiiteAuthText({required this.text, super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Text.rich(TextSpan(
      children: [
        TextSpan(
          text: haveAccount,
          style: theme.textTheme.bodyLarge?.copyWith(
            fontSize: 18,
            color: ColorName.onBackground,
            fontWeight: FontWeight.normal,
          ),
        ),
        TextSpan(
          text: text,
          style: theme.textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ],
    ));
  }
}
