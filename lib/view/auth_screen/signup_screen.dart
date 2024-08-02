import 'package:flutter/material.dart';
import 'package:test_app/controller/auth_controller.dart';
import 'package:test_app/model/auth-model.dart';
import 'package:test_app/view/auth_button/auth_button.dart';
import 'package:test_app/widgets/textfield.dart';

class SignupScreen extends StatelessWidget {
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
                  Image.asset("assets/Ellipse 2.png"),
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
              TextfieldWidget(
                controller: _usernameController,
                label: "Username",
              ),
              TextfieldWidget(
                controller: _passwordController,
                label: "Password",
              ),
              const SizedBox(height: 15),
              AuthButton(
                  text: "Sign up",
                  navigation: "Already have an account",
                  onPressed: () async {
                    final data = AuthModel(
                      _usernameController.text,
                      _passwordController.text,
                    );
                    await AuthController().Register(data, context);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
