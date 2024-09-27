import 'dart:io';

import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/di/biite.di.dart';
import 'package:biite/core/presentation/state/field.events.dart';
import 'package:biite/core/presentation/state/field.state.dart';
import 'package:biite/core/presentation/state/name.field.bloc.dart';
import 'package:biite/features/message/state/message.bloc.dart';
import 'package:biite/features/message/widget/message.detail.appbar.dart';
import 'package:biite/features/message/widget/messaging.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageDetail extends StatefulWidget {
  const MessageDetail({required this.extra, super.key});

  final Map<String, dynamic> extra;

  @override
  State<MessageDetail> createState() => _MessageDetailState();
}

class _MessageDetailState extends State<MessageDetail> {
  final ScrollController _scrollController = ScrollController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    // _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    Future.delayed(const Duration(milliseconds: 100), () => _scrollDown());

    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {}
      _scrollDown();
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollDown() {
    _scrollController.animateTo(_scrollController.position.maxScrollExtent,
        duration: const Duration(seconds: 1), curve: Curves.fastOutSlowIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          MessageDetailAppbar(
            name: widget.extra["name"],
            profileUrl: widget.extra["profileUrl"],
          ),
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Messaging(
                room: widget.extra["room"],
                // isTextfieldOpened: _focusNode.hasFocus,
              ),
            ),
          ),
          _ChatTextField(roomId: widget.extra["room"].id!, focusNode: _focusNode)
        ],
      ),
    );
  }
}

class _ChatTextField extends StatelessWidget {
  const _ChatTextField({required this.roomId, this.focusNode, super.key});

  final String roomId;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<NameFieldBloc>(instanceName: 'chat');
    final messageBloc = getIt.get<MessageBloc>();

    return Container(
      padding: Platform.isAndroid
          ? EdgeInsets.symmetric(horizontal: 16.h)
          : EdgeInsets.only(
              left: 16.h, right: 16, top: 10, bottom: 40), // TODO: adjust bottom space when keyboard tapped
      color: ColorName.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        // textBaseline: TextBaseline.alphabetic,
        children: [
          Expanded(
            child: BlocBuilder<NameFieldBloc, FieldState>(
              bloc: bloc,
              builder: (_, state) => TextField(
                controller: bloc.nameController,
                focusNode: focusNode,
                onChanged: (text) => bloc.add(NameFieldEvent(text)),
                minLines: 1,
                maxLines: 5,
                onTapOutside: (PointerDownEvent event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                style: context.appTheme.textTheme.bodySmall?.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  color: ColorName.onBackground,
                ),
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  isDense: true,
                ),
              ),
            ),
          ),
          SizedBox(width: 24.w),
          IconButton(onPressed: () => messageBloc.addMessage(roomId), icon: const Icon(Icons.send))
        ],
      ),
    );
  }
}
