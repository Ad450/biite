import 'package:flutter/material.dart';
import 'package:presentation/gen/colors.gen.dart';
import 'package:presentation/theme/theme.dart';

/// [showBiiteDialog] is generic Biite dialog template
///
void showBiiteDialog(
  BuildContext context, {
  String? headerTitle,
  String? body,
  required VoidCallback onTap,
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
              onPressed: () => onTap,
              child: const Text('Ok'),
            ),
          ],
        );
      });
}

void showBiiteLogoutDialog(BuildContext context, VoidCallback onLogout) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: ColorName.white,
          title: Text(
            "Confirm Logout",
            style: context.appTheme.textTheme.displayMedium?.copyWith(
              fontSize: 25,
              color: ColorName.onBackground,
            ),
          ),
          content: Text(
            'Are you sure you want to logout!!',
            style: context.appTheme.textTheme.displayMedium?.copyWith(
              fontSize: 20,
              color: ColorName.onBackground,
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: onLogout,
              child: const Text('Confirm'),
            ),
          ],
        );
      });
}
