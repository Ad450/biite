import 'dart:io';

import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/presentation/biite.avatar.with.text.dart';
import 'package:biite/core/presentation/biite.button.dart';
import 'package:biite/core/presentation/biite.multiline.textfield.dart';
import 'package:biite/core/presentation/biite.textfield.dart';
import 'package:biite/features/feed/widgets/file.widget.dart';
import 'package:biite/features/feed/widgets/upload.file.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:file_picker/file_picker.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  Set<File> files = {};

  void _pickFiles() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: true);
    if (result != null) {
      for (var e in result.files) {
        String newPath = e.path!.toLowerCase();
        bool fileExists = files.any((element) => element.path.toLowerCase().split("-")[1] == newPath.split("-")[1]);

        if (!fileExists) {
          files.add(File(e.path!));
        }
      }

      setState(() {});
    } else {
      return;
    }
  }

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
              SizedBox(height: 40.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const BiiteAvatarWithText(name: "Emmanuel Adjei"),
                      SizedBox(height: 48.h),
                      Text(
                        "Create your project",
                        style: context.appTheme.textTheme.titleSmall?.copyWith(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16.h),
                      BiiteMultilineTextfield(
                        controller: TextEditingController(),
                        hintText: "Description",
                      ),
                      SizedBox(height: 24.h),
                      UploadFile(onTap: _pickFiles),
                      SizedBox(height: 24.h),
                      // show file if chosen
                      ...files.map((e) => FileWidget(
                            filename: e.path.split("/").last,
                            onClose: () {
                              files.removeWhere((element) => e.path == element.path);
                              setState(() {});
                            },
                          )),
                      // const FileWidget(),
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
                      BiiteTextfield(controller: TextEditingController()),
                      SizedBox(height: 69.h),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 56.w),
                        child: BiiteTextButton(onPressed: () {}, text: "Finish"),
                      )
                    ],
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
