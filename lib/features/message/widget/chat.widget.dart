import 'package:biite/core/app/app.theme.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Chat extends StatelessWidget {
  const Chat({
    required this.isRight,
    required this.index,
    required this.text,
    required this.date,
    super.key,
  });

  final int index;
  // final bool isRead;
  final String text;
  final bool isRight;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      margin: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          Align(
            alignment: isRight ? Alignment.centerRight : Alignment.centerLeft,
            child: Container(
              decoration: BoxDecoration(
                color: isRight ? ColorName.primary : ColorName.ownerChat,
                borderRadius: BorderRadius.circular(4),
              ),
              width: 200.w,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  text,
                  maxLines: isRight ? 3 : 8,
                  style: context.appTheme.textTheme.bodySmall
                      ?.copyWith(fontSize: 12.8, fontWeight: FontWeight.normal, color: ColorName.white),
                ),
              ),
            ),
          ),
          Align(
            alignment: isRight ? Alignment.centerRight : Alignment.centerLeft,
            child: SizedBox(
              height: 16.h,
              width: 150.w,
              child: Text(
                "$date √",
                textAlign: TextAlign.end,
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
