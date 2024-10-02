import 'package:biite/api/models/bid.model.dart';
import 'package:biite/api/utils/functions.dart';
import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/presentation/widgets/biite.avatar.with.text.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PropositionWidget extends StatelessWidget {
  const PropositionWidget({required this.bidModel, this.isFeed = false, super.key});

  final BidModel bidModel;
  final bool isFeed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        onTap: isFeed
            ? () => context.push("/propositionRelatedProject", extra: bidModel)
            : () => context.push("/propositionDetail", extra: bidModel),
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(color: ColorName.white),
          margin: const EdgeInsets.only(bottom: 16),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PeerProfileAvatar(ownerId: bidModel.ownerId),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      bidModel.description,
                      style: context.appTheme.textTheme.titleSmall
                          ?.copyWith(fontSize: 16, color: ColorName.onBackground, fontWeight: FontWeight.normal),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    convertDateTime(bidModel.createdAt),
                    style: context.appTheme.textTheme.titleSmall
                        ?.copyWith(fontSize: 13, color: ColorName.onBackground, fontWeight: FontWeight.normal),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
