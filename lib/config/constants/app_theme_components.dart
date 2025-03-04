import 'package:flutter/material.dart';
import 'package:tile_flow/config/constants/app_colors.dart';
import 'package:tile_flow/config/constants/app_text_styles.dart';
import 'package:tile_flow/config/constants/dimensions.dart';

class AppThemeComponents {
  AppBarTheme get appBarLight => const AppBarTheme(
        color: AppColors.seed,
        elevation: Dimensions.elevation,
        shadowColor: Colors.black,
        titleTextStyle: AppTextStyles.headlineSmall,
      );

  final TextTheme apptTextTheme = const TextTheme().copyWith(
    headlineSmall: AppTextStyles.headlineSmall,
    titleMedium: AppTextStyles.titleMedium,
    titleSmall: AppTextStyles.bodyMedium,
  );

  final appElevatedButtonTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.resolveWith<Color>(
        (states) {
          if (states.contains(WidgetState.disabled)) {
            return Colors.grey.withValues(
              alpha: Dimensions.opacityM,
            );
          }
          return AppColors.seed;
        },
      ),
      foregroundColor: WidgetStateProperty.resolveWith<Color>(
        (states) {
          if (states.contains(WidgetState.disabled)) {
            return Colors.black54;
          }
          return Colors.white;
        },
      ),
      padding: WidgetStateProperty.all(
        const EdgeInsets.symmetric(horizontal: Dimensions.paddingS),
      ),
      textStyle: WidgetStateProperty.all(AppTextStyles.bodyMedium),
      shape: WidgetStateProperty.all(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(Dimensions.radiusM),
          ),
        ),
      ),
      visualDensity: VisualDensity.compact,
    ),
  );

  TextSelectionThemeData get appTextSelectionTheme =>
      const TextSelectionThemeData(
        cursorColor: AppColors.seed,
      );

  InputDecorationTheme get appInputDecorationTheme => InputDecorationTheme(
        labelStyle: AppTextStyles.bodyMedium.copyWith(
          color: Colors.black54,
        ),
        floatingLabelStyle:
            AppTextStyles.bodyMedium.copyWith(color: AppColors.seed),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
            width: Dimensions.widthM,
          ),
        ),
        focusedErrorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
            width: Dimensions.widthM,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
            width: Dimensions.widthM,
          ),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
            width: Dimensions.widthM,
          ),
        ),
      );

  ProgressIndicatorThemeData get appProgressIndicatorTheme =>
      const ProgressIndicatorThemeData(
        color: Colors.white,
      );

  IconThemeData get appIconTheme => const IconThemeData(color: Colors.white);

  IconButtonThemeData get appIconButtonTheme => IconButtonThemeData(
        style: ButtonStyle(
          iconColor: WidgetStateProperty.all(Colors.white),
        ),
      );
}
