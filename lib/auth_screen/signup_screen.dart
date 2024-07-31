import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/auth_button/auth_button.dart';
import 'package:test_app/auth_screen/login_screen.dart';
import 'package:test_app/note_screen/note_screen.dart';
import 'package:test_app/widgets/textfield.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                    "assets/Ellipse 2.png",
                  ),
                  const Align(
                    heightFactor: 5,
                    widthFactor: 3.8,
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const TextfieldWidget(
                label: "Name",
              ),
              const TextfieldWidget(
                label: "Email",
              ),
              const TextfieldWidget(
                label: "Confirm email",
              ),
              const TextfieldWidget(
                label: "Password",
              ),
              const TextfieldWidget(
                label: "Confirm Password",
              ),
              const SizedBox(
                height: 15,
              ),
              AuthButton(
                 navigate: () {
                  Get.to(() => const NoteScreen());
                },
                text: "Sign up",
                navigation: "Already have an account",
                onPressed: () {
                  Get.to(() => const LoginScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
