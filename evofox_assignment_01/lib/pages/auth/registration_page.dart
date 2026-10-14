import 'package:evofox_assignment_01/core/theme/app_colors.dart';
import 'package:evofox_assignment_01/pages/auth/login_page.dart';
import 'package:evofox_assignment_01/pages/onboarding/welcome_page.dart';
import 'package:evofox_assignment_01/widgets/app_input_field.dart';
import 'package:evofox_assignment_01/widgets/app_pass_field.dart';
import 'package:evofox_assignment_01/widgets/auth_header.dart';
import 'package:evofox_assignment_01/widgets/custom_app_bar.dart';
import 'package:evofox_assignment_01/widgets/elevated_app_button.dart';
import 'package:evofox_assignment_01/widgets/text_app_button.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  static const name = "/registration-page";

  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameTEController = TextEditingController();
  final _emailTEController = TextEditingController();
  final _passwordTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        rightMostAction: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, WelcomePage.name);
          },
          icon: Icon(Icons.close),
        ),
      ),

      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsetsGeometry.fromLTRB(28, 28, 28, 28),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: .spaceBetween,
                children: [
                  AuthHeader(
                    titleText: 'Join the hunt!',
                    subTitleText: 'Launch your library, join friends,\nand jump back into your next session.',
                  ),

                  Column(
                    children: [
                      AppInputField(
                        labelText: 'Full name',
                        hintText: 'Your name',
                        textEditingController: _nameTEController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Name is Required!";
                          }
                          return null;
                        },
                      ),

                      SizedBox(height: 18),

                      AppInputField(
                        labelText: 'Email Address',
                        hintText: 'you@example.com',
                        textEditingController: _emailTEController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Email is Required!";
                          }
                          return null;
                        },
                      ),

                      SizedBox(height: 18),

                      AppPassField(
                        textEditingController: _passwordTEController,
                        labelText: 'Password',
                        hintText: 'Create a password',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Pawwrod is Required!";
                          }
                          return null;
                        },
                      ),

                      SizedBox(height: 18),

                      AppPassField(
                        textEditingController: _passwordTEController,
                        labelText: 'Confirm password',
                        hintText: 'Re-enter your password',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Pawwrod is Required!";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      ElevatedAppButton(
                        title: "Create account",
                        onPressed: () {
                          _formKey.currentState!.validate();
                        },
                      ),

                      TextAppButton(
                        title: '',
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                            context,
                            LoginPage.name,
                          );
                        },
                        textSpans: [
                          const TextSpan(text: "Already have an account? "),
                          TextSpan(
                            text: 'Log in',
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
        ),
      ),
    );
  }
}
