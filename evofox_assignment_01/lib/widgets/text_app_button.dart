import 'package:evofox_assignment_01/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextAppButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final List<TextSpan>? textSpans;

  const TextAppButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.textSpans,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = GoogleFonts.orbit(
      textStyle: Theme.of(context).textTheme.labelMedium,
    );

    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.foregroundRed,
        overlayColor: AppColors.backgroundBlack,
      ),
      onPressed: onPressed,
      child: textSpans != null
          ? Text.rich(TextSpan(style: textStyle, children: textSpans))
          : Text(title, style: textStyle),
    );
  }
}
