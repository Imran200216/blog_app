import 'package:blog_app/core/theme/app_pallate.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final darkThemeMode = ThemeData.dark().copyWith(
    /// background theme
    scaffoldBackgroundColor: AppPallete.backgroundColor,

    /// input decoration theme
    inputDecorationTheme: const InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppPallete.borderColor,
          width: 2,
        ),
      ),
    ),
  );
}
