import 'package:biite/api/models/room.model.dart';
import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/di/biite.di.dart';
import 'package:biite/core/presentation/widgets/biite.avatar.with.text.dart';
import 'package:biite/features/message/state/message.bloc.dart';
import 'package:biite/features/message/state/message.state.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageTile extends StatelessWidget {
  const MessageTile({
    required this.room,
    required this.index,
    required this.name,
    required this.profileUrl,
    required this.onTap,
    super.key,
  });

  final RoomModel room;
  final int index;
  final String name;
  final String? profileUrl;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 103.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: index % 2 == 0 ? ColorName.onboardingBackground : ColorName.white,
        ),
        padding: const EdgeInsets.only(left: 16, right: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: <Widget>[
                Hero(tag: room.id!, child: MessageTilePicAvatar(profileUrl: profileUrl)),
                SizedBox(width: 16.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style: context.appTheme.textTheme.titleMedium?.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    BlocBuilder<MessageBloc, MessageState>(
                      bloc: getIt.get<MessageBloc>()..fetchLastMessage(room.id!),
                      builder: (_, state) => state.maybeMap(
                        orElse: () => Text(
                          "",
                          style: context.appTheme.textTheme.bodySmall?.copyWith(
                            fontSize: 12.8,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        lastMessage: (state) => Text(
                          state.text,
                          style: context.appTheme.textTheme.bodySmall?.copyWith(
                            fontSize: 12.8,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: index % 2 == 0 ? ColorName.background : ColorName.onboardingBackground,
              size: 13,
            )
          ],
        ),
      ),
    );
  }
}
