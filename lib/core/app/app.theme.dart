import 'package:biite/gen/colors.gen.dart';
import 'package:biite/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class AppTheme {
  ThemeData get lightTheme => ThemeData(
        colorScheme: const ColorScheme(
          primary: ColorName.primary,
          brightness: Brightness.light,
          onPrimary: ColorName.onBackground,
          secondary: ColorName.primary,
          onSecondary: ColorName.onBackground,
          error: ColorName.background,
          onError: Colors.red,
          background: ColorName.background,
          onBackground: ColorName.onBackground,
          surface: ColorName.background,
          onSurface: ColorName.onBackground,
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontFamily: FontFamily.redHatDisplay,
            fontSize: 96,
            color: ColorName.onBackground,
            fontWeight: FontWeight.w500,
          ),
          titleLarge: TextStyle(
            fontFamily: FontFamily.redHatDisplay,
            fontSize: 39,
            color: ColorName.onBackground,
            fontWeight: FontWeight.w500,
          ),
          titleMedium: TextStyle(
            fontFamily: FontFamily.redHatDisplay,
            fontSize: 32,
            color: ColorName.onBackground,
            fontWeight: FontWeight.w500,
          ),
          bodyLarge: TextStyle(
            fontFamily: FontFamily.redHatDisplay,
            fontSize: 25,
            color: ColorName.onBackground,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: TextStyle(
            fontFamily: FontFamily.redHatDisplay,
            fontSize: 20,
            color: ColorName.onBackground,
            fontWeight: FontWeight.bold,
          ),
          bodySmall: TextStyle(
            fontFamily: FontFamily.publicSans,
            fontSize: 16,
            color: ColorName.secondary,
            fontWeight: FontWeight.normal,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: const MaterialStatePropertyAll<Color>(ColorName.primary),
            textStyle: const MaterialStatePropertyAll<TextStyle>(
              TextStyle(
                fontSize: 18,
                fontFamily: FontFamily.publicSans,
                fontWeight: FontWeight.w500,
              ),
            ),
            side: const MaterialStatePropertyAll(
              BorderSide(style: BorderStyle.solid),
            ),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60),
              ),
            ),
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: ColorName.fillColor,
          hintStyle: TextStyle(
            color: ColorName.hintColor,
            fontWeight: FontWeight.normal,
            fontFamily: FontFamily.publicSans,
            fontSize: 16,
          ),
        ),
      );
  ThemeData get darkTheme => ThemeData();
}
