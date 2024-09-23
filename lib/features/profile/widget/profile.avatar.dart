import 'package:biite/core/app/app.theme.dart';
import 'package:biite/features/profile/state/profile.state.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({required this.state, super.key});
  final ProfileState state;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        state.maybeMap(
          orElse: () => const Icon(Icons.person),
          fetch: (state) => CachedNetworkImage(
            imageUrl: state.user.profilePic ?? "",
            placeholder: (_, __) => const Icon(Icons.person),
            errorWidget: (_, __, ___) => const Icon(Icons.person),
            imageBuilder: (_, provider) => CircleAvatar(
              backgroundImage: provider,
              radius: 24,
            ),
          ),
        ),
        SizedBox(width: 8.w),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              state.maybeMap(orElse: () => "Anonymous", fetch: (state) => state.user.name),
              style: context.appTheme.textTheme.titleMedium?.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Anonymous",
              style: context.appTheme.textTheme.bodySmall?.copyWith(
                fontSize: 12.8,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
