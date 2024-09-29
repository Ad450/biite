import 'dart:io';

import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/di/biite.di.dart';
import 'package:biite/core/presentation/state/field.events.dart';
import 'package:biite/core/presentation/state/field.state.dart';
import 'package:biite/core/presentation/state/name.field.bloc.dart';
import 'package:biite/features/message/state/message.bloc.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatTextField extends StatelessWidget {
  const ChatTextField({required this.roomId, this.focusNode, super.key});

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
                keyboardType: TextInputType.multiline,
                keyboardAppearance: Brightness.dark,
                maxLines: 7,
                minLines: 1,
                controller: bloc.nameController,
                onChanged: (text) => bloc.add(NameFieldEvent(text)),
                textAlignVertical: TextAlignVertical.top,
                style: context.appTheme.textTheme.bodySmall?.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.normal,
                  color: ColorName.onBackground,
                  height: 1.2,
                ),
                onTapOutside: (PointerDownEvent event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                decoration: InputDecoration(
                  isDense: true,
                  filled: true,
                  fillColor: Colors.grey.withOpacity(0.2),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(width: 0, style: BorderStyle.none),
                    borderRadius: BorderRadius.circular(40),
                  ),
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
