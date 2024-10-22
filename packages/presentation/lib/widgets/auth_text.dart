import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:presentation/gen/colors.gen.dart';
import 'package:presentation/locales.dart';

class BiiteAuthText extends StatelessWidget {
  const BiiteAuthText({
    this.text = "Sign-up",
    this.gettingStarted,
    required this.onTap,
    super.key,
  });
  final String? text;
  final VoidCallback onTap;
  final String? gettingStarted;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: Text.rich(TextSpan(
        children: [
          TextSpan(
            text: gettingStarted ?? haveAccount,
            style: theme.textTheme.bodyLarge?.copyWith(
              fontSize: 17.sp,
              color: ColorName.onBackground,
              fontWeight: FontWeight.normal,
            ),
          ),
          TextSpan(
            text: text,
            style: theme.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 17.sp,
            ),
          ),
        ],
      )),
    );
  }
}
