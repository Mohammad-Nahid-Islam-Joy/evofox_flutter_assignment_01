import 'package:evofox_assignment_01/core/theme/app_colors.dart';
import 'package:evofox_assignment_01/pages/onboarding/onboarding_page_two.dart';
import 'package:evofox_assignment_01/widgets/custom_app_bar.dart';
import 'package:evofox_assignment_01/widgets/elevated_app_button.dart';
import 'package:evofox_assignment_01/widgets/onborading_page_indicator.dart';
import 'package:evofox_assignment_01/widgets/text_app_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPageOne extends StatelessWidget {
  static const name = "/onboradin-page-one";

  const OnboardingPageOne({super.key});

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

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            mainAxisAlignment: .spaceBetween,
            children: [
              Image.asset('assets/Images/Onboarding1.png'),

              Align(
                alignment: .centerLeft,
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      "DISCOVER GAMES",
                      style: GoogleFonts.orbit(
                        textStyle: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),

                    SizedBox(height: 20),

                    Text(
                      "Find your next\nplay.",
                      style: GoogleFonts.orbitron(
                        textStyle: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),

                    SizedBox(height: 20),

                    Text(
                      "Browse new releases, hidden gems, and deals in one dark, focused\nstorefront. Your library is waiting.",
                      style: GoogleFonts.orbit(
                        textStyle: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                  ],
                ),
              ),

              Column(
                children: [
                  OnboradingPageIndicator(activeIndex: 1),

                  SizedBox(height: 24),

                  ElevatedAppButton(
                    title: "Continue",
                    onPressed: () {
                      Navigator.pushNamed(context, OnboardingPageTwo.name);
                    },
                    icon: Icons.arrow_forward,
                  ),

                  TextAppButton(
                    title: '',
                    onPressed: () {},
                    textSpans: [
                      const TextSpan(text: "Don't have an account? "),
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                          color: AppColors.foregroundRed,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
