import 'dart:io';

import 'package:biite/core/app/app.theme.dart';
import 'package:biite/features/message/widget/message.detail.appbar.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageDetail extends StatelessWidget {
  const MessageDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                    child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 122.h),
                      // )),
                      ...List.generate(
                        // chat messages here
                        20,
                        (i) => Align(
                            alignment: i % 2 == 0 ? Alignment.centerRight : Alignment.centerLeft,
                            child: _Chat(index: i, isRead: i % 2 == 0)),
                      ),
                    ],
                  ),
                )),
                const Positioned(
                  top: 0,
                  left: 0,
                  child: MessageDetailAppbar(name: "Ben Aduo"),
                ),
              ],
            ),
          ),
          const _ChatTextField()
        ],
      ),
    );
  }
}

class _Chat extends StatelessWidget {
  const _Chat({required this.index, required this.isRead, super.key});

  final int index;
  final bool isRead;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      margin: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          Align(
            alignment: index % 2 == 0 ? Alignment.centerRight : Alignment.centerLeft,
            child: Container(
              decoration: BoxDecoration(
                color: index % 2 == 0 ? ColorName.primary : ColorName.ownerChat,
                borderRadius: BorderRadius.circular(4),
              ),
              width: 200.w,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  dummyProjectDescription,
                  maxLines: index % 2 == 0 ? 3 : 8,
                  style: context.appTheme.textTheme.bodySmall
                      ?.copyWith(fontSize: 12.8, fontWeight: FontWeight.normal, color: ColorName.white),
                ),
              ),
            ),
          ),
          Align(
            alignment: index % 2 == 0 ? Alignment.centerRight : Alignment.centerLeft,
            child: SizedBox(
              height: 16.h,
              width: 78.w,
              child: Text(
                "Read 12:45 √",
                style: context.appTheme.textTheme.bodySmall
                    ?.copyWith(fontSize: 12.8, fontWeight: FontWeight.normal, color: ColorName.fillColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _ChatTextField extends StatelessWidget {
  const _ChatTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Platform.isAndroid
          ? EdgeInsets.symmetric(horizontal: 16.h)
          : EdgeInsets.only(
              left: 16.h, right: 16, top: 10, bottom: 40), // TODO: adjust bottom space when keyboard tapped
      color: ColorName.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        // textBaseline: TextBaseline.alphabetic,
        children: [
          Expanded(
            child: TextField(
              controller: TextEditingController(),
              minLines: 1,
              maxLines: 5,
              onTapOutside: (PointerDownEvent event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              style: context.appTheme.textTheme.bodySmall?.copyWith(
                fontSize: 13,
                fontWeight: FontWeight.normal,
                color: ColorName.onBackground,
              ),
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(8),
                isDense: true,
              ),
            ),
          ),
          SizedBox(width: 24.w),
          IconButton(onPressed: () {}, icon: const Icon(Icons.send))
        ],
      ),
    );
  }
}
