import 'package:evofox_assignment_01/core/theme/app_colors.dart';
import 'package:evofox_assignment_01/pages/auth/login_page.dart';
import 'package:evofox_assignment_01/pages/onboarding/onboarding_page_three.dart';
import 'package:evofox_assignment_01/widgets/custom_app_bar.dart';
import 'package:evofox_assignment_01/widgets/onboarding_button_block.dart';
import 'package:evofox_assignment_01/widgets/onboarding_middle_info_block.dart';
import 'package:evofox_assignment_01/widgets/text_app_button.dart';
import 'package:flutter/material.dart';

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

              OnBoardingMiddleInfoBlock(
                subtitleText: 'BUILD YOUR LIBRARY',
                titleText: 'Your games.\nOne place.',
                despText: 'Keep your collection organized,\ndownload titles ahead of time, and\njump back in from anywhere.',
              ),

              OnBoardingButtonBlock(
                activeIndex: 2,
                elevatedButtonText: 'Continue',
                nextPage: OnboardingPageThree.name,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
