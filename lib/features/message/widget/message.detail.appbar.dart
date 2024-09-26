import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/presentation/widgets/biite.avatar.with.text.dart';
import 'package:biite/core/presentation/widgets/biite.back.dart';
import 'package:biite/core/presentation/widgets/biite.toast.dart';
import 'package:biite/gen/assets.gen.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageDetailAppbar extends StatelessWidget {
  const MessageDetailAppbar({
    required this.name,
    required this.profileUrl,
    super.key,
  });

  final String name;
  final String profileUrl;

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
          BiiteBack(),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: <Widget>[
                  MessageTilePicAvatar(profileUrl: profileUrl, radius: 12),
                  SizedBox(width: 8.w),
                  Text(
                    name,
                    style: context.appTheme.textTheme.titleMedium?.copyWith(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              // TODO :add call and chat settings
              Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () => showToast("feature not supported yet!"),
                    child: Image.asset(Assets.images.phoneIcon.path),
                  ),
                  const SizedBox(width: 32),
                  GestureDetector(
                    onTap: () => showToast("feature not supported yet!"),
                    child: Image.asset(Assets.images.moreIcon.path),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
