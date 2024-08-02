import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/constraints/colors.dart';
import 'package:test_app/view/auth_button/auth_button.dart';
import 'package:test_app/view/auth_screen/signup_screen.dart';
import 'package:test_app/widgets/textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/Ellipse 1.png",
                  ),
                  const Align(
                    alignment: Alignment.center,
                    heightFactor: 6.5,
                    child: Text(
                      'LOGO',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "WELCOME",
                style: TextStyle(
                  color: blue,
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "THE BEST PLACE TO MAKE NOTE",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextfieldWidget(
                controller: _usernameController,
                label: "Email",
              ),
              TextfieldWidget(
                controller: _passwordController,
                label: "Password",
              ),
              const SizedBox(
                height: 10,
              ),
              AuthButton(
                text: "Login",
                navigation: "Don't have an account? create account",
                onPressed: () {
                  Get.to(() => SignupScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
