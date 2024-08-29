import 'package:biite/core/app/app.theme.dart';
import 'package:biite/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BiiteAvatarWithText extends StatelessWidget {
  const BiiteAvatarWithText({required this.name, this.fontSize, this.radius, super.key});
  final String name;
  final double? radius;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CircleAvatar(
          radius: radius ?? 24,
          // use caching mechanism here
          child: Image.asset(Assets.images.avatar.path, fit: BoxFit.cover),
        ),
        SizedBox(width: 8.w),
        Text(
          name,
          style: context.appTheme.textTheme.titleMedium?.copyWith(
            fontSize: fontSize ?? 25,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
