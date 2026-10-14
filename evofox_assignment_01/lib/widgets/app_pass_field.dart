import 'package:evofox_assignment_01/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppPassField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final TextEditingController textEditingController;
  final String? Function(String?)? validator;

  const AppPassField({
    super.key,
    required this.textEditingController,
    required this.labelText,
    required this.hintText,
    this.validator,
  });

  @override
  State<AppPassField> createState() => _AppPassFieldState();
}

class _AppPassFieldState extends State<AppPassField> {
  bool _isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          widget.labelText,
          style: GoogleFonts.orbit(
            fontWeight: .bold,
            textStyle: Theme.of(context).textTheme.headlineSmall,
          ),
        ),

        SizedBox(height: 8),

        TextFormField(
          controller: widget.textEditingController,
          obscureText: !_isPasswordVisible,

          decoration: InputDecoration(
            hintText: widget.hintText,

            hintStyle: GoogleFonts.orbit(
              textStyle: Theme.of(context).textTheme.labelMedium,
            ),

            suffixIcon: IconButton(
              icon: Icon(
                color: AppColors.textGray,
                _isPasswordVisible
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
              ),
              onPressed: () {
                setState(() {
                  _isPasswordVisible = !_isPasswordVisible;
                });
              },
            ),
          ),

          validator: widget.validator,
        ),
      ],
    );
  }
}
