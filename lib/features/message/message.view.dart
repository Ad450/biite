import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/di/biite.di.dart';
import 'package:biite/core/presentation/widgets/biite.toast.dart';
import 'package:biite/features/message/state/chats.bloc.dart';
import 'package:biite/features/message/state/message.state.dart';
import 'package:biite/features/message/widget/message.tile.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageView extends StatelessWidget {
  const MessageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.onboardingBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 56.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Message",
              style: context.appTheme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          // list of chats
          const Expanded(
            child: Column(
              children: [_Chats()],
            ),
          )
        ],
      ),
    );
  }
}

class _Chats extends StatelessWidget {
  const _Chats({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<ChatBloc>();

    return BlocConsumer<ChatBloc, ChatState>(
      bloc: bloc..fetchChats(),
      listener: (_, state) => state.maybeMap(
        orElse: () => null,
        error: (state) => showToast(state.message),
      ),
      builder: (_, state) => Expanded(
          child: state.maybeMap(
        orElse: () => const Center(
          child: Text("Get started by adding chats"),
        ),
        loading: (_) => const Center(child: CupertinoActivityIndicator()),
        fetchChats: (state) => SingleChildScrollView(
          child: state.chats.isEmpty
              ? Center(
                  child: Text(
                    "No chat added",
                    style: context.appTheme.textTheme.bodySmall?.copyWith(
                      fontSize: 15,
                      color: ColorName.onBackground,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    state.chats.length,
                    (i) => MessageTile(room: state.chats[i], index: i),
                  ),
                ),
        ),
      )),
    );
  }
}
