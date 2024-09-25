import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/presentation/widgets/biite.avatar.with.text.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PropositionWidget extends StatelessWidget {
  const PropositionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        onTap: () => context.push("/propositionDetail"),
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(color: ColorName.white),
          margin: const EdgeInsets.only(bottom: 16),
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const OwnerProfileAvatar(),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Truncated proposition text...",
                    style: context.appTheme.textTheme.titleSmall
                        ?.copyWith(fontSize: 16, color: ColorName.fillColor, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "12/12/2023",
                    style: context.appTheme.textTheme.titleSmall
                        ?.copyWith(fontSize: 16, color: ColorName.fillColor, fontWeight: FontWeight.normal),
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
