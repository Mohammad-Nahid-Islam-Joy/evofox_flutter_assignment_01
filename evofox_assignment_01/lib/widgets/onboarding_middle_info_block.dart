import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingMiddleInfoBlock extends StatelessWidget {
  final String subtitleText;
  final String titleText;
  final String despText;

  const OnBoardingMiddleInfoBlock({
    super.key,
    required this.subtitleText,
    required this.titleText,
    required this.despText,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: .centerLeft,
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            subtitleText,
            style: GoogleFonts.orbit(
              textStyle: Theme.of(context).textTheme.headlineSmall,
            ),
          ),

          SizedBox(height: 20),

          Text(
            titleText,
            style: GoogleFonts.orbitron(
              textStyle: Theme.of(context).textTheme.headlineLarge,
            ),
          ),

          SizedBox(height: 20),

          Text(
            despText,
            style: GoogleFonts.orbit(
              textStyle: Theme.of(context).textTheme.labelMedium,
            ),
          ),
        ],
      ),
    );
  }
}
