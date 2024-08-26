import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/presentation/biite.back.dart';
import 'package:biite/gen/assets.gen.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageDetailAppbar extends StatelessWidget {
  const MessageDetailAppbar({required this.name, super.key});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 122.h,
      width: 375.w,
      color: ColorName.white.withOpacity(0.4),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 50.h),
          const BiiteBack(),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 12,
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
              ),
              Row(
                children: <Widget>[
                  Image.asset(Assets.images.phoneIcon.path),
                  const SizedBox(width: 32),
                  Image.asset(Assets.images.moreIcon.path),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
