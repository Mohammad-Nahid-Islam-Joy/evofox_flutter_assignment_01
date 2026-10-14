// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:evofox_assignment_01/core/theme/app_colors.dart';
import 'package:evofox_assignment_01/pages/auth/registration_page.dart';
import 'package:evofox_assignment_01/pages/onboarding/welcome_page.dart';
import 'package:evofox_assignment_01/widgets/app_pass_field.dart';
import 'package:evofox_assignment_01/widgets/text_app_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:evofox_assignment_01/widgets/app_input_field.dart';
import 'package:evofox_assignment_01/widgets/auth_header.dart';
import 'package:evofox_assignment_01/widgets/custom_app_bar.dart';
import 'package:evofox_assignment_01/widgets/elevated_app_button.dart';

class LoginPage extends StatefulWidget {
  static const name = "/login-page";

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailTEController = TextEditingController();
  final _passwordTEController = TextEditingController();
  bool _isChecked = false;

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
                    titleText: 'Sign in to Evo Fox!',
                    subTitleText: 'Launch your library, join friends,\nand jump back into your next session.',
                  ),

                  Column(
                    children: [
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
                        hintText: 'Enter your password',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Pawwrod is Required!";
                          }
                          return null;
                        },
                      ),

                      //SizedBox(height: 18),
                      Row(
                        children: [
                          Checkbox(
                            value: _isChecked,
                            onChanged: (value) {
                              setState(() {
                                _isChecked = value!;
                              });
                            },
                          ),

                          Text(
                            "Remember me",
                            style: GoogleFonts.orbit(
                              textStyle: Theme.of(context).textTheme.labelSmall,
                            ),
                          ),

                          const Spacer(),

                          TextAppButton(
                            title: '',
                            onPressed: () {},
                            textSpans: [
                              TextSpan(
                                text: 'Forgot password?',
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

                  Column(
                    children: [
                      ElevatedAppButton(
                        title: "Sign in",
                        onPressed: () {
                          _formKey.currentState!.validate();
                        },
                      ),

                      SizedBox(height: 22),

                      Row(
                        children: [
                          const Expanded(child: Divider()),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              'or continue with',
                              style: GoogleFonts.orbit(
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .labelSmall,
                              ),
                            ),
                          ),
                          const Expanded(child: Divider()),
                        ],
                      ),

                      SizedBox(height: 22),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.textFieldFillGray,

                          side: const BorderSide(
                            color: AppColors.textFieldStrockGray,
                            width: 1.5,
                          ),
                        ),

                        child: Text("Conitune with Steam"),

                        onPressed: () {
                          _formKey.currentState!.validate();
                        },
                      ),

                      TextAppButton(
                        title: '',
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                            context,
                            RegistrationPage.name,
                          );
                        },
                        textSpans: [
                          const TextSpan(text: "New to Evo Fox? "),
                          TextSpan(
                            text: 'Create an account',
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
