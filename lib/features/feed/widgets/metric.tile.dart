import 'package:biite/core/app/app.theme.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MetricTile extends StatefulWidget {
  const MetricTile({
    required this.expandedWidget,
    required this.titleMetricScore,
    required this.name,
    super.key,
  });

  final Widget expandedWidget;
  final String titleMetricScore;
  final String name;

  @override
  State<MetricTile> createState() => _MetricTileState();
}

class _MetricTileState extends State<MetricTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: AnimatedContainer(
        height: isExpanded ? 312.h : 86.h,
        width: double.infinity,
        curve: Curves.fastOutSlowIn,
        duration: const Duration(milliseconds: 500),
        decoration: const BoxDecoration(
          color: ColorName.onboardingBackground,
          border: Border(
            top: BorderSide(color: ColorName.fillColor, width: 0.5),
            bottom: BorderSide(color: ColorName.fillColor, width: 0.5),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: isExpanded
              ? widget.expandedWidget
              : _NormalContainer(
                  titleMetricScore: widget.titleMetricScore,
                  name: widget.name,
                ),
        ),
      ),
    );
  }
}

class _NormalContainer extends StatelessWidget {
  const _NormalContainer({required this.titleMetricScore, required this.name, super.key});

  final String titleMetricScore;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          name,
          style: context.appTheme.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.normal),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              titleMetricScore,
              style: context.appTheme.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold, fontSize: 40.5),
            ),
            SizedBox(
              height: 8.h,
              width: 13.w,
              child: const Icon(Icons.keyboard_arrow_down, color: ColorName.fillColor),
            )
          ],
        ),
      ],
    );
  }
}
