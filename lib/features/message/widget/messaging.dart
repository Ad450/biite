import 'package:biite/api/models/message.model.dart';
import 'package:biite/api/models/room.model.dart';
import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/di/biite.di.dart';
import 'package:biite/features/message/state/message.bloc.dart';
import 'package:biite/features/message/widget/chat.widget.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Messaging extends StatelessWidget {
  const Messaging({required this.scrollDown, required this.room, super.key});

  final RoomModel room;
  final VoidCallback scrollDown;

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<MessageBloc>();

    return Container(
      color: ColorName.onboardingBackground,
      child: StreamBuilder<List<MessageModel>>(
          stream: bloc.fetchMessages(room.id!),
          builder: (_, snapshot) {
            if (snapshot.hasError) {
              return const Column(
                children: <Widget>[
                  Center(
                    child: Text("Error fetching messages"),
                  )
                ],
              );
            }
            if (!snapshot.hasData) {
              return Column(
                children: <Widget>[
                  Center(
                    child: Text("No data fetched yet", style: context.appTheme.textTheme.bodySmall),
                  )
                ],
              );
            }
            return Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_downward),
                    onPressed: scrollDown,
                  ),
                ),
                ...List.generate(
                  // chat messages here
                  snapshot.data!.length,
                  (i) => Align(
                    alignment: snapshot.data![i].isRight! ? Alignment.centerLeft : Alignment.centerRight,
                    child: Chat(
                      index: i,
                      text: snapshot.data![i].text,
                      isRight: snapshot.data![i].isRight!,
                      date: snapshot.data![i].createdAt,
                    ),
                  ),
                ),
                SizedBox(height: 400.h)
              ],
            );
          }),
    );
  }
}
