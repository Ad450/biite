import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/presentation/biite.avatar.with.text.dart';
import 'package:biite/core/presentation/biite.view.all.dart';
import 'package:biite/features/feed/widgets/proposition.widget.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class FeedPropositions extends StatelessWidget {
  const FeedPropositions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Propositions",
                style: context.appTheme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              BiiteViewAll(onTap: () => context.push("/allPropositions"))
            ],
          ),
        ),
        // show first 2 latest projects
        SizedBox(height: 16.h),
        const PropositionWidget(),
        const PropositionWidget(),
      ],
    );
  }
}
