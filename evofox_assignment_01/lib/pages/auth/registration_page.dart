import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  static const name = "registration-page";

  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Reg Page")));
  }
}
