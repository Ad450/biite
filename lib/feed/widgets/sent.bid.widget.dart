import 'package:bid_repository/bid_repository.dart';
import 'package:biite/common/biite.avatar.with.text.dart';
import 'package:configuration/configuration.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:presentation/gen/colors.gen.dart';
import 'package:presentation/theme/theme.dart';

class SentBidWidget extends StatelessWidget {
  const SentBidWidget({required this.bidModel, super.key});

  final BidModel bidModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        onTap: () => context.push("/sendBidsDetails", extra: bidModel),
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
                      style: context.appTheme.textTheme.titleSmall?.copyWith(
                        fontSize: 16,
                        color: ColorName.onBackground,
                        fontWeight: FontWeight.normal,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    convertDateTime(bidModel.createdAt),
                    style: context.appTheme.textTheme.titleSmall?.copyWith(
                      fontSize: 13,
                      color: ColorName.onBackground,
                      fontWeight: FontWeight.normal,
                    ),
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
