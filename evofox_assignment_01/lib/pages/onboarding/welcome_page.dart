// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:evofox_assignment_01/widgets/onboarding_button_block.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:evofox_assignment_01/core/theme/app_colors.dart';
import 'package:evofox_assignment_01/pages/auth/login_page.dart';
import 'package:evofox_assignment_01/pages/onboarding/onboarding_page_one.dart';
import 'package:evofox_assignment_01/widgets/custom_app_bar.dart';
import 'package:evofox_assignment_01/widgets/text_app_button.dart';

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

      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsetsGeometry.fromLTRB(28, 0, 28, 28),
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

                    Image.asset(
                      'assets/Images/EVOFOX wordmark.png',
                      width: 190,
                    ),

                    SizedBox(height: 12),

                    Text(
                      "Your next great play starts here.",
                      style: GoogleFonts.orbit(
                        textStyle: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                  ],
                ),

                OnBoardingButtonBlock(
                  activeIndex: 0,
                  elevatedButtonText: 'Continue',
                  nextPage: OnboardingPageOne.name,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
