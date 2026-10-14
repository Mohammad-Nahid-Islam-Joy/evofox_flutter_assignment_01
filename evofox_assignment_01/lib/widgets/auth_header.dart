import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthHeader extends StatelessWidget {
  final String titleText;
  final String subTitleText;

  const AuthHeader({
    super.key,
    required this.titleText,
    required this.subTitleText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/Images/Welcome motif.png', width: 70),

        SizedBox(height: 12),

        Text(
          titleText,
          style: GoogleFonts.orbitron(
            textStyle: Theme.of(context).textTheme.headlineLarge,
          ),
        ),

        SizedBox(height: 12),

        Text(
          subTitleText,
          textAlign: .center,
          style: GoogleFonts.orbit(
            textStyle: Theme.of(context).textTheme.labelMedium,
          ),
        ),
      ],
    );
  }
}
