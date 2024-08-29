import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/presentation/biite.back.dart';
import 'package:biite/core/presentation/biite.button.dart';
import 'package:biite/core/presentation/biite.textfield.dart';
import 'package:biite/features/profile/widget/edit.profile.avatar.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool _isFileSelected = false;
  late ImagePicker _imagePicker;
  XFile? xfile;

  @override
  void initState() {
    super.initState();
    _imagePicker = ImagePicker();
  }

  void _handlePickImage() async {
    final image = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _isFileSelected = true;
        xfile = image;
      });
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Align(alignment: Alignment.centerLeft, child: BiiteBack()),
              SizedBox(height: 40.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "change profile picture",
                          style: context.appTheme.textTheme.bodySmall?.copyWith(
                            fontSize: 16,
                            color: ColorName.text,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Align(
                        alignment: Alignment.center,
                        child: EditProfileAvatar(
                            handlePickImage: _handlePickImage, isFileSelected: _isFileSelected, path: xfile?.path),
                      ),
                      SizedBox(height: 48.h),
                      Text(
                        "First name",
                        style: context.appTheme.textTheme.bodySmall?.copyWith(
                          fontSize: 16,
                          color: ColorName.text,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 16.h),
                      BiiteTextfield(
                        controller: TextEditingController(),
                        hintText: "First name",
                        inputType: TextInputType.text,
                      ),
                      Text(
                        "lastname",
                        style: context.appTheme.textTheme.bodySmall?.copyWith(
                          fontSize: 16,
                          color: ColorName.text,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 16.h),
                      BiiteTextfield(
                        controller: TextEditingController(),
                        hintText: "Last name",
                        inputType: TextInputType.text,
                      ),
                      Text(
                        "password",
                        style: context.appTheme.textTheme.bodySmall?.copyWith(
                          fontSize: 16,
                          color: ColorName.text,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 16.h),
                      BiiteTextfield(
                        controller: TextEditingController(),
                        hintText: "Password",
                        inputType: TextInputType.text,
                      ),
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
