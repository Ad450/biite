import 'package:biite/common/biite.avatar.with.text.dart';
import 'package:biite/common/biite.back.dart';
import 'package:biite/dashboard/bloc/dashboard.state.dart';
import 'package:biite/dashboard/bloc/file.bloc.dart';
import 'package:biite/di/biite.di.dart';
import 'package:biite/feed/widgets/file.widget.dart';
import 'package:biite/feed/widgets/upload.file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:presentation/gen/colors.gen.dart';
import 'package:presentation/locales.dart';
import 'package:presentation/theme/theme.dart';
import 'package:presentation/widgets/button.dart';
import 'package:presentation/widgets/multiline_textfield.dart';
import 'package:presentation/widgets/toast.dart';
import 'package:project_repository/project_repository.dart';

class SendYourWork extends StatelessWidget {
  const SendYourWork({required this.project, super.key});

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.onboardingBackground,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              BiiteBack(),
              SizedBox(height: 40.h),
              PeerProfileAvatar(ownerId: project.ownerId),
              SizedBox(height: 48.h),
              Text(
                sendYourWork,
                style: context.appTheme.textTheme.titleSmall?.copyWith(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.h),
              BiiteMultilineTextfield(
                controller: TextEditingController(),
                onChanged: (text) {},
              ),
              SizedBox(height: 24.h),
              UploadFile(onTap: () => getIt<FileBloc>(instanceName: "sendWork").pickFiles()),
              SizedBox(height: 24.h),
              // show file if chosen
              const _SelectedFileWidget(),
              SizedBox(height: 69.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 56.w),
                child: BiiteTextButton(onPressed: () {}, text: "Send"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _SelectedFileWidget extends StatelessWidget {
  const _SelectedFileWidget();

  @override
  Widget build(BuildContext context) {
    final dashboardBloc = getIt<FileBloc>(instanceName: "sendWork");
    return BlocConsumer<FileBloc, FileState>(
      bloc: dashboardBloc,
      listener: (_, state) => state.maybeMap(
        orElse: () => null,
        error: (state) => showToast(state.message!),
      ),
      builder: (_, state) => state.maybeMap(
        orElse: () => const SizedBox(),
        fileSelected: (state) => SizedBox(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: state.files
              .map((e) => FileWidget(
                    filename: e.path.split("/").last,
                    onTap: () => dashboardBloc.removeFile(e.path),
                  ))
              .toList(),
        )),
      ),
    );
  }
}
