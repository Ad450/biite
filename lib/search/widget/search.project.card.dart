import 'package:biite/search/widget/proposition.count.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:presentation/presentation.dart';

class SearchProjectCard extends StatelessWidget {
  const SearchProjectCard({
    required this.daysPosted,
    required this.description,
    required this.price,
    required this.tags,
    required this.title,
    required this.projectId,
    required this.isDetail,
    super.key,
  });

  final String daysPosted;
  final String title;
  final String description;
  final String price;
  final List<String> tags;
  final String projectId;
  final bool isDetail;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 16.h),
        Text(
          "Posted $daysPosted",
          style: context.appTheme.textTheme.bodySmall?.copyWith(fontSize: 12.8, fontWeight: FontWeight.normal),
        ),
        SizedBox(height: 24.h),
        Hero(
          tag: projectId,
          child: Text(
            title,
            style: context.appTheme.textTheme.titleMedium?.copyWith(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            maxLines: isDetail ? null : 1,
            overflow: isDetail ? null : TextOverflow.ellipsis,
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
          maxLines: isDetail ? null : 1,
          overflow: isDetail ? null : TextOverflow.ellipsis,
          style: context.appTheme.textTheme.bodyMedium?.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 16.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PropositionCount(projectId: projectId),
            Text(
              price,
              style: context.appTheme.textTheme.bodySmall?.copyWith(
                fontSize: 16,
                color: ColorName.primary,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        SizedBox(height: 24.h),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          direction: Axis.horizontal,
          children: tags
              .map((e) => BiiteChip(
                    text: e,
                    selected: false,
                    onSelected: (isSelected) {},
                  ))
              .toList(),
        ),
        SizedBox(height: 16.h),
      ],
    );
  }
}
