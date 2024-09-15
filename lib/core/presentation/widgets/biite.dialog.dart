import 'package:biite/core/app/app.theme.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// [showBiiteDialog] is generic Biite dialog template
///
void showBiiteDialog(
  BuildContext context, {
  String? headerTitle,
  String? body,
}) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: ColorName.white,
          title: Text(
            headerTitle ?? 'Confirm Navigation',
            style: context.appTheme.textTheme.displayMedium?.copyWith(
              fontSize: 25,
              color: ColorName.onBackground,
            ),
          ),
          content: Text(
            body ?? 'Project created successfully!',
            style: context.appTheme.textTheme.displayMedium?.copyWith(
              fontSize: 20,
              color: ColorName.onBackground,
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => context.pop(),
              child: const Text('Stay'),
            ),
            TextButton(
              onPressed: () => context.go("/home"),
              child: const Text('Go to Home'),
            ),
          ],
        );
      });
}
