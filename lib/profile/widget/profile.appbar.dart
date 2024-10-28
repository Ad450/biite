import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:presentation/gen/colors.gen.dart';
import 'package:presentation/theme/theme.dart';

class ProfileAppbar extends StatelessWidget {
  const ProfileAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Profile",
          style: context.appTheme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          onPressed: () => context.push("/editProfile"),
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
