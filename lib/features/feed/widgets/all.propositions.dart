import 'package:biite/core/presentation/widgets/biite.back.dart';
import 'package:biite/features/feed/widgets/proposition.widget.dart';
import 'package:biite/features/feed/widgets/sent.bid.widget.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class AllPropositions extends StatelessWidget {
  const AllPropositions({required this.params, super.key});

  final Map<String, dynamic> params;
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
                  itemBuilder: (_, i) => params["isSent"]
                      ? SentBidWidget(bidModel: params["bids"][i])
                      : PropositionWidget(
                          bidModel: params["bids"][i],
                          onTap: () => context.push(
                            "/propositionDetail",
                            extra: params["bids"][i],
                          ),
                          // isSent: params["isSent"],
                        ),
                  separatorBuilder: (_, __) => SizedBox(height: 8.h),
                  itemCount: params["bids"].length,
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
