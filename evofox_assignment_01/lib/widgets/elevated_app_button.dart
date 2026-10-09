import 'package:flutter/material.dart';

class ElevatedAppButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final IconData? icon;

  const ElevatedAppButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      return ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon),
        iconAlignment: IconAlignment.end,
        label: Text(title),
      );
    }

    return ElevatedButton(onPressed: onPressed, child: Text(title));
  }
}
