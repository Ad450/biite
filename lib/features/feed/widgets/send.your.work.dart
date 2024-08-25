import 'package:biite/core/presentation/biite.back.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class SendYourWork extends StatelessWidget {
  const SendYourWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.background,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: BiiteBack(),
            ),
          ],
        ),
      ),
    );
  }
}
