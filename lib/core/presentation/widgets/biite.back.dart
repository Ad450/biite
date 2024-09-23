import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/di/biite.di.dart';
import 'package:biite/core/presentation/widgets/biite.toast.dart';
import 'package:biite/features/message/state/chats.bloc.dart';
import 'package:biite/features/message/state/message.state.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BiiteBack extends StatelessWidget {
  BiiteBack({
    this.showMessage = false,
    this.onMessagePressed,
    this.peerId,
    super.key,
  }) : assert(() {
          final condition1 = peerId == null && showMessage == false;
          final condition2 = peerId != null && showMessage == true;

          if (condition1 || condition2) {
            return true;
          }
          return false;
        }());

  final bool showMessage;
  final VoidCallback? onMessagePressed;
  final String? peerId;
  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<ChatBloc>();

    return Row(
      children: [
        GestureDetector(
          onTap: () => context.pop(),
          child: SizedBox(
            height: 24.h,
            width: 66.w,
            child: Row(
              children: [
                const Icon(Icons.arrow_back, color: ColorName.fillColor, size: 16),
                SizedBox(width: 4.w),
                Text(
                  back,
                  style: context.appTheme.textTheme.titleSmall?.copyWith(
                    fontSize: 18,
                    color: ColorName.fillColor,
                  ),
                )
              ],
            ),
          ),
        ),
        const Spacer(),
        if (showMessage)
          BlocConsumer<ChatBloc, ChatState>(
            bloc: bloc,
            listener: (_, state) => state.maybeMap(
              orElse: () => null,
              error: (state) => showToast(state.message),
              createChat: (state) => showToast("Chat added, continue by checkout messages"),
            ),
            builder: (_, state) => state.maybeMap(
              loading: (_) => const CupertinoActivityIndicator(),
              orElse: () => IconButton(
                onPressed: () {
                  if (onMessagePressed != null) {
                    bloc.addChat(peerId!);
                  }
                },
                icon: const Icon(Icons.near_me, size: 30),
              ),
            ),
          )
      ],
    );
  }
}
