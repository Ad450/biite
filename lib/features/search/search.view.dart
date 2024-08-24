import 'package:biite/core/app/app.theme.dart';
import 'package:biite/features/search/widget/search.textfield.dart';
import 'package:biite/features/search/widget/search_filters.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 56.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              search,
              style: context.appTheme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 24.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SearchTextfield(
              controller: TextEditingController(),
            ),
          ),
          SizedBox(height: 32.h),
          const SearchFilters()
        ],
      ),
    );
  }
}
