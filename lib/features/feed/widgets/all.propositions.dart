import 'package:biite/core/presentation/widgets/biite.back.dart';
import 'package:biite/features/feed/widgets/proposition.widget.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllPropositions extends StatelessWidget {
  const AllPropositions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.onboardingBackground,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BiiteBack(),
              // ...List.generate(11, (index) => const ReviewContainer())
              SizedBox(height: 40.h),

              Expanded(
                child: ListView.separated(
                  itemBuilder: (_, i) => const PropositionWidget(),
                  separatorBuilder: (_, __) => SizedBox(height: 8.h),
                  itemCount: 12,
                ),
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}
