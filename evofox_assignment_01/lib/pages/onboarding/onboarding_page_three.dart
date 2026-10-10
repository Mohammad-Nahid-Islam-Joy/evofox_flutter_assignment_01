import 'package:evofox_assignment_01/core/theme/app_colors.dart';
import 'package:evofox_assignment_01/pages/auth/login_page.dart';
import 'package:evofox_assignment_01/pages/auth/registration_page.dart';
import 'package:evofox_assignment_01/widgets/custom_app_bar.dart';
import 'package:evofox_assignment_01/widgets/elevated_app_button.dart';
import 'package:evofox_assignment_01/widgets/onborading_page_indicator.dart';
import 'package:evofox_assignment_01/widgets/text_app_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPageThree extends StatelessWidget {
  static const name = "/onboradin-page-three";

  const OnboardingPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            mainAxisAlignment: .spaceBetween,
            children: [
              Image.asset('assets/Images/Onboarding3.png'),

              Align(
                alignment: .centerLeft,
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      "DISCOVER DEALS",
                      style: GoogleFonts.orbit(
                        textStyle: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),

                    SizedBox(height: 20),

                    Text(
                      "Play more\nPay less",
                      style: GoogleFonts.orbitron(
                        textStyle: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),

                    SizedBox(height: 20),

                    Text(
                      "Follow the games you want, get notified when they go on sale, and build a library that fits your budget.",
                      style: GoogleFonts.orbit(
                        textStyle: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                  ],
                ),
              ),

              Column(
                children: [
                  OnboradingPageIndicator(activeIndex: 3),

                  SizedBox(height: 24),

                  ElevatedAppButton(
                    title: "Open EVOFOX",
                    onPressed: () {
                      Navigator.pushNamed(context, LoginPage.name);
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
