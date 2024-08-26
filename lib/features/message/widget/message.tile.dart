import 'package:biite/core/app/app.theme.dart';
import 'package:biite/gen/assets.gen.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class MessageTile extends StatelessWidget {
  const MessageTile({required this.backgroundColor, required this.name, super.key});

  final Color backgroundColor;
  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push("/messageDetail"),
      child: Container(
        height: 103.h,
        width: double.infinity,
        decoration: BoxDecoration(color: backgroundColor),
        padding: const EdgeInsets.only(left: 16, right: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 24,
                  // use caching mechanism here
                  child: Image.asset(Assets.images.avatar.path, fit: BoxFit.cover),
                ),
                SizedBox(width: 16.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style: context.appTheme.textTheme.titleMedium?.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      name,
                      style: context.appTheme.textTheme.bodySmall?.copyWith(
                        fontSize: 12.8,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const Icon(Icons.arrow_forward_ios, color: ColorName.fillColor, size: 13)
          ],
        ),
      ),
    );
  }
}
