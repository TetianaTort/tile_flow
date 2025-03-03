import 'package:flutter/material.dart';
import 'package:tile_flow/config/constants/app_colors.dart';
import 'package:tile_flow/config/constants/app_theme_components.dart';

final _themeComponents = AppThemeComponents();

ThemeData get lightTheme => ThemeData(
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.seed,
      ),
      appBarTheme: _themeComponents.appBarLight,
      textTheme: _themeComponents.apptTextTheme,
      elevatedButtonTheme: _themeComponents.appElevatedButtonTheme,
      inputDecorationTheme: _themeComponents.appInputDecorationTheme,
      textSelectionTheme: _themeComponents.appTextSelectionTheme,
      progressIndicatorTheme: _themeComponents.appProgressIndicatorTheme,
      iconTheme: _themeComponents.appIconTheme,
      iconButtonTheme: _themeComponents.appIconButtonTheme,
    );
