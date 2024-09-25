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
import 'package:go_router/go_router.dart';

class MessageTile extends StatelessWidget {
  const MessageTile({
    required this.room,
    required this.index,
    super.key,
  });

  final RoomModel room;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push("/messageDetail", extra: room),
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
                MessageTilePicAvatar(ownerId: room.peerId),
                SizedBox(width: 16.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      room.peerName,
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
                            )),
                  ],
                )
              ],
            ),
            const Icon(Icons.arrow_forward_ios, color: ColorName.fillColor, size: 13)
          ],
        ),
      ),
    );
  }
}
