// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:evofox_assignment_01/widgets/onboarding_middle_info_block.dart';
import 'package:flutter/material.dart';

import 'package:evofox_assignment_01/core/theme/app_colors.dart';
import 'package:evofox_assignment_01/pages/auth/login_page.dart';
import 'package:evofox_assignment_01/pages/onboarding/onboarding_page_two.dart';
import 'package:evofox_assignment_01/widgets/custom_app_bar.dart';
import 'package:evofox_assignment_01/widgets/onboarding_button_block.dart';
import 'package:evofox_assignment_01/widgets/text_app_button.dart';

class OnboardingPageOne extends StatelessWidget {
  static const name = "/onboradin-page-one";

  const OnboardingPageOne({super.key});

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
            padding: const EdgeInsetsGeometry.fromLTRB(28, 28, 28, 28),
            child: Column(
              mainAxisAlignment: .spaceBetween,
              children: [
                Image.asset('assets/Images/Onboarding1.png'),

                OnBoardingMiddleInfoBlock(
                  subtitleText: 'DISCOVER GAMES',
                  titleText: 'Find your next\nplay.',
                  despText: 'Browse new releases, hidden gems, and deals in one dark, focused\nstorefront. Your library is waiting.',
                ),

                OnBoardingButtonBlock(
                  activeIndex: 1,
                  elevatedButtonText: 'Continue',
                  nextPage: OnboardingPageTwo.name,
                  replaceRoute: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
