import 'package:flutter/material.dart';
import 'package:two_go_flutter_challenge/ui/themes/app_colors_theme.dart';

class AppTheme {
  static get theme => ThemeData(
        primaryColor: AppColorsTheme.primaryColor,
        appBarTheme: const AppBarTheme(color: AppColorsTheme.primaryColor, elevation: 0),
        scaffoldBackgroundColor: AppColorsTheme.secondaryColor,
        progressIndicatorTheme: const ProgressIndicatorThemeData(color: AppColorsTheme.primaryColor),
      );
}
