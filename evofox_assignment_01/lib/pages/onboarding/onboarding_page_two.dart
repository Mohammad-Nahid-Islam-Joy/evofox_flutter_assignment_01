import 'package:evofox_assignment_01/core/theme/app_colors.dart';
import 'package:evofox_assignment_01/widgets/custom_app_bar.dart';
import 'package:evofox_assignment_01/widgets/elevated_app_button.dart';
import 'package:evofox_assignment_01/widgets/onborading_page_indicator.dart';
import 'package:evofox_assignment_01/widgets/text_app_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPageTwo extends StatelessWidget {
  static const name = "/onboradin-page-two";

  const OnboardingPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        rightMostAction: TextAppButton(
          title: "",
          onPressed: () {},
          textSpans: [
            TextSpan(
              text: 'Skip',
              style: TextStyle(
                color: AppColors.foregroundRed,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),

      body: Center(),

      /*
      body: Padding(
        padding: const EdgeInsets.all(28),
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/Images/Onboarding1.png'),
              Text(
                "DISCOVER GAMES",
                style: GoogleFonts.orbit(
                  textStyle: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            ],
          ),
        ),
      ),
      */
    );
  }
}
