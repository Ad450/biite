import 'package:biite/core/app/app.theme.dart';
import 'package:biite/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BiiteAvatarWithText extends StatelessWidget {
  const BiiteAvatarWithText({required this.name, super.key});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CircleAvatar(
          radius: 24,
          // use caching mechanism here
          child: Image.asset(Assets.images.avatar.path, fit: BoxFit.cover),
        ),
        SizedBox(width: 8.w),
        Text(
          name,
          style: context.appTheme.textTheme.titleMedium?.copyWith(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
