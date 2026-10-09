import 'package:evofox_assignment_01/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData get dark {
    final colorScheme =
        ColorScheme.fromSeed(
          seedColor: AppColors.foregroundRed,
          brightness: Brightness.dark,
        ).copyWith(
          primary: AppColors.foregroundRed,
          onPrimary: AppColors.textWhite,

          secondary: AppColors.textGray,
          onSecondary: AppColors.backgroundBlack,

          surface: AppColors.backgroundBlack,
          onSurface: AppColors.textWhite,

          error: AppColors.foregroundRed,
          onError: AppColors.textWhite,
        );

    final base = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: AppColors.backgroundBlack,
    );

    return base.copyWith(
      textTheme: base.textTheme.copyWith(
        headlineLarge: const TextStyle(
          color: AppColors.textWhite,
          fontSize: 32,
          fontWeight: .bold,
          height: 1.15,
        ),
      ),
    );
  }
}
