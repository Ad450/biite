import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/presentation/widgets/biite.avatar.with.text.dart';
import 'package:biite/core/presentation/widgets/biite.back.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageDetailAppbar extends StatelessWidget {
  const MessageDetailAppbar({
    required this.name,
    required this.profileUrl,
    required this.roomId,
    super.key,
  });

  final String name;
  final String profileUrl;
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
          SizedBox(height: 15.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: <Widget>[
                  Hero(tag: roomId, child: MessageTilePicAvatar(profileUrl: profileUrl, radius: 12)),
                  SizedBox(width: 8.w),
                  Text(
                    name,
                    style: context.appTheme.textTheme.titleMedium?.copyWith(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              // TODO :add call and chat settings
              Row(
                children: <Widget>[
                  IconButton(onPressed: () {}, icon: const Icon(Icons.phone, size: 20)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert_outlined, size: 20)),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
