import 'package:evofox_assignment_01/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      scaffoldBackgroundColor: Colors.black,
    );

    return base.copyWith(
      textTheme: base.textTheme.copyWith(
        headlineLarge: const TextStyle(
          color: AppColors.textWhite,
          fontSize: 32,
          fontWeight: .bold,
          height: 1.15,
        ),

        headlineSmall: const TextStyle(
          color: AppColors.foregroundRed,
          fontSize: 13,
          height: 1.15,
          letterSpacing: 0.5,
        ),

        labelSmall: const TextStyle(
          color: AppColors.textGray,
          fontSize: 13,
          height: 1.15,
        ),

        labelMedium: const TextStyle(
          color: AppColors.textGray,
          fontSize: 15,
          height: 1.70,
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.foregroundRed,
          foregroundColor: AppColors.textWhite,
          overlayColor: AppColors.backgroundBlack,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),

          textStyle: GoogleFonts.orbitron(
            fontSize: 15,
            fontWeight: FontWeight.w900,
          ),

          minimumSize: const Size(double.infinity, 54),
        ),
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
        foregroundColor: Colors.red,
        elevation: 0,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
      ),
    );
  }
}
