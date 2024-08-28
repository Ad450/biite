import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/presentation/biite.chip.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchProjectCard extends StatelessWidget {
  const SearchProjectCard({
    required this.daysPosted,
    required this.description,
    required this.propositions,
    required this.price,
    required this.tags,
    required this.title,
    super.key,
  });

  final String daysPosted;
  final String title;
  final String description;
  final String propositions;
  final String price;
  final List<String> tags;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 16.h),
        Text(
          "Posted $daysPosted days ago",
          style: context.appTheme.textTheme.bodySmall?.copyWith(fontSize: 12.8, fontWeight: FontWeight.normal),
        ),
        SizedBox(height: 24.h),
        Text(
          // "This is the title",
          title,
          style: context.appTheme.textTheme.titleMedium?.copyWith(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 24.h),
        Text(
          "Description",
          style: context.appTheme.textTheme.titleMedium?.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          description,
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
          style: context.appTheme.textTheme.bodyMedium?.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: ColorName.fillColor,
          ),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 16.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "$propositions propositions",
              style: context.appTheme.textTheme.bodySmall?.copyWith(fontSize: 12.8, fontWeight: FontWeight.normal),
            ),
            Text(
              "\$ $price",
              style: context.appTheme.textTheme.bodySmall?.copyWith(
                fontSize: 16,
                color: ColorName.primary,
              ),
            ),
          ],
        ),
        SizedBox(height: 24.h),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          direction: Axis.horizontal,
          children: tags.map((e) => BiiteChip(text: e)).toList(),
        ),
        SizedBox(height: 16.h),
      ],
    );
  }
}
