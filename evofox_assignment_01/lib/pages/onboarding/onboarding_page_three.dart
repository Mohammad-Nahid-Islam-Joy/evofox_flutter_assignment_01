import 'package:evofox_assignment_01/pages/auth/login_page.dart';
import 'package:evofox_assignment_01/widgets/custom_app_bar.dart';
import 'package:evofox_assignment_01/widgets/onboarding_button_block.dart';
import 'package:evofox_assignment_01/widgets/onboarding_middle_info_block.dart';
import 'package:flutter/material.dart';

class OnboardingPageThree extends StatelessWidget {
  static const name = "/onboradin-page-three";

  const OnboardingPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),

      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsetsGeometry.fromLTRB(28, 28, 28, 28),
            child: Column(
              mainAxisAlignment: .spaceBetween,
              children: [
                Image.asset('assets/Images/Onboarding3.png'),

                OnBoardingMiddleInfoBlock(
                  subtitleText: 'DISCOVER DEALS',
                  titleText: 'Play more\nPay less.',
                  despText: 'Follow the games you want, get notified when they go on sale, and build a library that fits your budget.',
                ),

                OnBoardingButtonBlock(
                  activeIndex: 3,
                  elevatedButtonText: 'Open EVOFOX',
                  nextPage: LoginPage.name,
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
