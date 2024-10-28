import 'package:biite/message/widget/chat.text.field.dart';
import 'package:biite/message/widget/message.detail.appbar.dart';
import 'package:biite/message/widget/messaging.dart';
import 'package:flutter/material.dart';
import 'package:presentation/gen/colors.gen.dart';

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
    Future.delayed(const Duration(milliseconds: 300), () => _scrollDown());

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
      backgroundColor: ColorName.onboardingBackground,
      body: Column(
        children: [
          MessageDetailAppbar(
            name: widget.extra["name"],
            profileUrl: widget.extra["profileUrl"],
            roomId: widget.extra["room"].id!,
          ),
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              physics: const BouncingScrollPhysics(),
              child: Messaging(
                room: widget.extra["room"],
                scrollDown: _scrollDown,
                // isTextfieldOpened: _focusNode.hasFocus,
              ),
            ),
          ),
          ChatTextField(roomId: widget.extra["room"].id!, focusNode: _focusNode)
        ],
      ),
    );
  }
}
