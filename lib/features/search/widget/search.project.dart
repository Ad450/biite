import 'package:biite/core/presentation/widgets/biite.avatar.with.text.dart';
import 'package:biite/features/search/widget/search.project.card.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SearchProject extends StatelessWidget {
  const SearchProject({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push("/searchProjectDetail"),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 16.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                height: 74.h,
                decoration: const BoxDecoration(color: ColorName.searchCard),
                child: const BiiteAvatarWithText(name: "Emmanuel Adjei"),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                decoration: const BoxDecoration(
                  color: ColorName.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SearchProjectCard(
                      description: dummyProjectDescription,
                      title: "This is the title",
                      price: "500",
                      daysPosted: "10",
                      tags: ["UI/UX", "DESIGN", "FIGMA", "PHOTOSHOP"],
                      propositions: "16",
                    ),
                    SizedBox(height: 16.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
