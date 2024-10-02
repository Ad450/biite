import 'package:auto_size_text/auto_size_text.dart';
import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/di/biite.di.dart';
import 'package:biite/features/profile/state/peer.bloc.dart';
import 'package:biite/features/profile/state/profile.bloc.dart';
import 'package:biite/features/profile/state/profile.state.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OwnerProfileAvatar extends StatelessWidget {
  const OwnerProfileAvatar({this.background, super.key});

  final Color? background;

  @override
  Widget build(BuildContext context) {
    final placeholder = CircleAvatar(
      backgroundColor: background ?? ColorName.onboardingBackground,
      child: const Icon(
        Icons.person,
        color: ColorName.background,
      ),
    );

    return BlocBuilder<ProfileBloc, ProfileState>(
      bloc: getIt.get<ProfileBloc>()..fetch(),
      builder: (_, state) => Row(
        children: <Widget>[
          state.maybeMap(
            orElse: () => placeholder,
            fetch: (state) => state.user.profilePic == null || state.user.profilePic!.isEmpty
                ? placeholder
                : CachedNetworkImage(
                    imageUrl: state.user.profilePic ?? "",
                    placeholder: (_, __) => placeholder,
                    errorWidget: (_, __, ___) => placeholder,
                    imageBuilder: (_, provider) => CircleAvatar(
                      backgroundImage: provider,
                      backgroundColor: background,
                      radius: 24,
                    ),
                  ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: AutoSizeText(
              state.maybeMap(orElse: () => "Anonymous", fetch: (state) => state.user.name),
              style: context.appTheme.textTheme.titleMedium?.copyWith(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
            ),
          )
        ],
      ),
    );
  }
}

class PeerProfileAvatar extends StatelessWidget {
  const PeerProfileAvatar({required this.ownerId, this.radius, this.background, super.key});

  final String ownerId;
  final double? radius;
  final Color? background;

  @override
  Widget build(BuildContext context) {
    final placeholder = CircleAvatar(
      backgroundColor: background ?? ColorName.onboardingBackground,
      child: const Icon(
        Icons.person,
        color: ColorName.background,
      ),
    );

    return BlocBuilder<PeerBloc, PeerState>(
      bloc: getIt.get<PeerBloc>()..fetchPeer(ownerId),
      builder: (_, state) => Row(
        children: <Widget>[
          state.maybeMap(
            orElse: () => placeholder,
            fetchPeer: (state) => state.user.profilePic == null || state.user.profilePic!.isEmpty
                ? placeholder
                : CachedNetworkImage(
                    imageUrl: state.user.profilePic ?? "",
                    placeholder: (_, __) => placeholder,
                    errorWidget: (_, __, ___) => placeholder,
                    imageBuilder: (_, provider) => CircleAvatar(
                      backgroundImage: provider,
                      backgroundColor: background,
                      radius: radius ?? 24,
                    ),
                  ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: AutoSizeText(
              state.maybeMap(orElse: () => "Anonymous", fetchPeer: (state) => state.user.name),
              style: context.appTheme.textTheme.titleMedium?.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
            ),
          )
        ],
      ),
    );
  }
}

class MessageTilePicAvatar extends StatelessWidget {
  const MessageTilePicAvatar({required this.profileUrl, this.background, this.radius, super.key});
  final double? radius;
  final String? profileUrl;
  final Color? background;

  @override
  Widget build(BuildContext context) {
    final placeholder = CircleAvatar(
      backgroundColor: background ?? ColorName.white,
      child: const Icon(
        Icons.person,
        color: ColorName.background,
      ),
    );
    return profileUrl == null || profileUrl!.isEmpty
        ? placeholder
        : CachedNetworkImage(
            imageUrl: profileUrl!,
            placeholder: (_, __) => placeholder,
            errorWidget: (_, __, ___) => placeholder,
            imageBuilder: (_, provider) => CircleAvatar(
              backgroundImage: provider,
              radius: radius ?? 24,
              backgroundColor: background,
            ),
          );
  }
}
