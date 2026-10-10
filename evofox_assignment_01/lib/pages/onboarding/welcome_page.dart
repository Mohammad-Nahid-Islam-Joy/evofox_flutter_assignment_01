import 'package:evofox_assignment_01/core/theme/app_colors.dart';
import 'package:evofox_assignment_01/pages/onboarding/onboarding_page_one.dart';
import 'package:evofox_assignment_01/widgets/elevated_app_button.dart';
import 'package:evofox_assignment_01/widgets/onborading_page_indicator.dart';
import 'package:evofox_assignment_01/widgets/text_app_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  static const name = "/welcome-page";

  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            mainAxisAlignment: .spaceBetween,
            children: [
              SizedBox(),

              Column(
                children: [
                  Image.asset(
                    'assets/Images/Evo Fox logo.png',
                    width: 88,
                    height: 88,
                  ),

                  SizedBox(height: 26),

                  Image.asset('assets/Images/EVOFOX wordmark.png', width: 190),

                  SizedBox(height: 12),

                  Text(
                    "Your next great play starts here.",
                    style: GoogleFonts.orbit(
                      textStyle: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ],
              ),

              Column(
                children: [
                  OnboradingPageIndicator(activeIndex: 0),

                  SizedBox(height: 24),

                  ElevatedAppButton(
                    title: "Continue",
                    onPressed: () {
                      Navigator.pushNamed(context, OnboardingPageOne.name);
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
