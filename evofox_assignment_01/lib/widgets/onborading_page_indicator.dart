import 'package:evofox_assignment_01/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboradingPageIndicator extends StatelessWidget {
  final int activeIndex;

  const OnboradingPageIndicator({super.key, required this.activeIndex});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: 4,
        effect: ExpandingDotsEffect(
          dotHeight: 6,
          dotWidth: 6,
          spacing: 10,
          activeDotColor: AppColors.foregroundRed,
          dotColor: AppColors.dotDarkGray,
        ),
      ),
    );
  }
}
