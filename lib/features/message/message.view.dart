import 'package:biite/core/app/app.theme.dart';
import 'package:biite/features/message/widget/message.tile.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageView extends StatelessWidget {
  const MessageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.onboardingBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 56.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Message",
              style: context.appTheme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          // list of chats
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  10,
                  (i) => MessageTile(
                      backgroundColor: i % 2 == 0 ? ColorName.onboardingBackground : ColorName.white, name: "Ben Aduo"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
