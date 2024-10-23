import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:presentation/gen/colors.gen.dart';
import 'package:presentation/theme/theme.dart';

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
    return Align(
      alignment: isRight ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12),
        margin: const EdgeInsets.symmetric(vertical: 24),
        decoration: BoxDecoration(
          color: isRight ? ColorName.primary : ColorName.ownerChat,
          borderRadius: BorderRadius.circular(4),
        ),
        width: 200.w,
        child: IntrinsicHeight(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  text,
                  style: context.appTheme.textTheme.bodySmall
                      ?.copyWith(fontSize: 12.8, fontWeight: FontWeight.normal, color: ColorName.white),
                ),
              ),
              const SizedBox(width: 10),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "${date.year}-${date.month}-${date.day}√",
                  textAlign: TextAlign.end,
                  style: context.appTheme.textTheme.bodySmall
                      ?.copyWith(fontSize: 12.8, fontWeight: FontWeight.normal, color: ColorName.background),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
