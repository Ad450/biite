import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/di/biite.di.dart';
import 'package:biite/features/profile/state/profile.bloc.dart';
import 'package:biite/features/profile/state/profile.state.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BiiteAvatarWithText extends StatelessWidget {
  const BiiteAvatarWithText({this.fontSize, this.radius, super.key});

  final double? radius;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      bloc: getIt.get<ProfileBloc>()..fetch(),
      builder: (_, state) => Row(
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
          Text(
            state.maybeMap(orElse: () => "Anonymous", fetch: (state) => state.user.name),
            style: context.appTheme.textTheme.titleMedium?.copyWith(
              fontSize: fontSize ?? 25,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
