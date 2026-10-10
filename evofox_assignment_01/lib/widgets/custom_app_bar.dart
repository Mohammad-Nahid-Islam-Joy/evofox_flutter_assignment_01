// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? rightMostAction;

  const CustomAppBar({super.key, this.rightMostAction});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          Image.asset('assets/Images/Evo Fox logo.png', height: 24, width: 24),

          SizedBox(width: 9),

          Image.asset(
            'assets/Images/EVOFOX wordmark.png',
            height: 24,
            width: 94,
          ),

          const Spacer(),

          ?rightMostAction,
        ],
      ),
      //backgroundColor: Colors.amberAccent /* AppColors.backgroundBlack */,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
