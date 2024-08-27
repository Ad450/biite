import 'package:biite/core/app/app.theme.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class ProfileAppbar extends StatelessWidget {
  const ProfileAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Profile",
          style: context.appTheme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.mode_edit_outline_outlined,
            color: ColorName.onBackground,
            size: 30,
          ),
        )
      ],
    );
  }
}
