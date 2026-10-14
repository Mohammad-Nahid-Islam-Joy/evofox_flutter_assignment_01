import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppInputField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController textEditingController;
  final String? Function(String?)? validator;

  const AppInputField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.textEditingController,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          labelText,
          style: GoogleFonts.orbit(
            fontWeight: .bold,
            textStyle: Theme.of(context).textTheme.headlineSmall,
          ),
        ),

        SizedBox(height: 8),

        TextFormField(
          controller: textEditingController,

          decoration: InputDecoration(
            hintText: hintText,

            hintStyle: GoogleFonts.orbit(
              textStyle: Theme.of(context).textTheme.labelMedium,
            ),
          ),

          validator: validator,
        ),
      ],
    );
  }
}
