import 'package:evofox_assignment_01/core/theme/app_colors.dart';
import 'package:evofox_assignment_01/pages/auth/login_page.dart';
import 'package:evofox_assignment_01/pages/auth/registration_page.dart';
import 'package:evofox_assignment_01/pages/onboarding/onboarding_page_three.dart';
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
          onPressed: () {
            Navigator.pushNamed(context, LoginPage.name);
          },
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
              Image.asset('assets/Images/Onboarding2.png'),

              Align(
                alignment: .centerLeft,
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      "BUILD YOUR LIBRARY",
                      style: GoogleFonts.orbit(
                        textStyle: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),

                    SizedBox(height: 20),

                    Text(
                      "Your games.\nOne place",
                      style: GoogleFonts.orbitron(
                        textStyle: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),

                    SizedBox(height: 20),

                    Text(
                      "Keep your collection organized,\ndownload titles ahead of time, and\njump back in from anywhere.",
                      style: GoogleFonts.orbit(
                        textStyle: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                  ],
                ),
              ),

              Column(
                children: [
                  OnboradingPageIndicator(activeIndex: 2),

                  SizedBox(height: 24),

                  ElevatedAppButton(
                    title: "Continue",
                    onPressed: () {
                      Navigator.pushNamed(context, OnboardingPageThree.name);
                    },
                    icon: Icons.arrow_forward,
                  ),

                  TextAppButton(
                    title: '',
                    onPressed: () {
                      Navigator.pushNamed(context, RegistrationPage.name);
                    },
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
