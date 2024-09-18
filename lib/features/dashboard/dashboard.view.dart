import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/di/biite.di.dart';
import 'package:biite/core/presentation/widgets/biite.avatar.with.text.dart';
import 'package:biite/core/presentation/widgets/biite.dialog.dart';
import 'package:biite/core/presentation/widgets/biite.toast.dart';
import 'package:biite/features/dashboard/bloc/dasboard.bloc.dart';
import 'package:biite/features/dashboard/bloc/dashboard.state.dart';
import 'package:biite/features/dashboard/widgets/compensation.field.dart';
import 'package:biite/features/dashboard/widgets/create.project.form.button.dart';
import 'package:biite/features/dashboard/widgets/project.description.field.dart';
import 'package:biite/features/dashboard/widgets/tags.dart';
import 'package:biite/features/dashboard/widgets/title.field.dart';
import 'package:biite/features/feed/widgets/file.widget.dart';
import 'package:biite/features/feed/widgets/upload.file.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    final dashboardBloc = getIt<DasboardBloc>();

    return Scaffold(
      backgroundColor: ColorName.onboardingBackground,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 10.h),
              const BiiteAvatarWithText(name: "Emmanuel Adjei"),
              SizedBox(height: 10.h),
              Expanded(
                child: SingleChildScrollView(
                  child: BlocConsumer<DasboardBloc, DashboardState>(
                    bloc: dashboardBloc,
                    listener: (_, state) => state.maybeMap(
                      orElse: () => null,
                      error: (state) => showToast(state.message!),
                      projectCreated: (_) => showBiiteDialog(context),
                    ),
                    builder: (_, state) => Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 20.h),
                        Text(
                          "Create your project",
                          style: context.appTheme.textTheme.titleSmall?.copyWith(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16.h),
                        const TitleField(),
                        SizedBox(height: 16.h),
                        const ProjectDescriptionField(),
                        SizedBox(height: 24.h),
                        UploadFile(onTap: dashboardBloc.pickFiles),
                        SizedBox(height: 24.h),
                        // show file if chosen
                        state.maybeMap(
                          orElse: () => const SizedBox(),
                          fileSelected: (state) => SizedBox(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: state.files
                                .map((e) => FileWidget(
                                      filename: e.path.split("/").last,
                                      onClose: () => dashboardBloc.removeFile(e.path),
                                    ))
                                .toList(),
                          )),
                        ),

                        SizedBox(height: 16.h),
                        Text(
                          "Compensation (GHS)",
                          style: context.appTheme.textTheme.bodySmall?.copyWith(
                            fontSize: 16,
                            color: ColorName.text,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(height: 16.h),
                        const CompensationField(),
                        SizedBox(height: 16.h),
                        const Tags(),
                        SizedBox(height: 80.h),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 56.w),
                          child: state.maybeMap(
                            orElse: () => const CreateProjectFormButton(),
                            loading: (_) =>
                                const Align(alignment: Alignment.center, child: CupertinoActivityIndicator()),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
