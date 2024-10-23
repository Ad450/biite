import 'package:auto_size_text/auto_size_text.dart';
import 'package:biite/common/biite.avatar.with.text.dart';
import 'package:biite/common/biite.back.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:presentation/gen/colors.gen.dart';
import 'package:presentation/theme/theme.dart';

class MessageDetailAppbar extends StatelessWidget {
  const MessageDetailAppbar({
    required this.name,
    required this.profileUrl,
    required this.roomId,
    super.key,
  });

  final String name;
  final String? profileUrl;
  final String roomId;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 140.h,
      width: 375.w,
      color: ColorName.white,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 50.h),
          BiiteBack(),
          SizedBox(height: 25.h),
          Row(
            children: <Widget>[
              Hero(
                tag: roomId,
                child: MessageTilePicAvatar(
                  profileUrl: profileUrl,
                  radius: 12,
                  background: ColorName.onboardingBackground,
                ),
              ),
              SizedBox(width: 8.w),
              AutoSizeText(
                name,
                style: context.appTheme.textTheme.titleMedium?.copyWith(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
              )
            ],
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
