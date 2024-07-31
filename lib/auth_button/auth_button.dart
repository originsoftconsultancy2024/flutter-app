import 'package:flutter/material.dart';
import 'package:test_app/constraints/colors.dart';

class AuthButton extends StatelessWidget {
  const AuthButton(
      {super.key,
      required this.text,
      required this.navigation,
      required this.onPressed,
      required this.navigate});

  final String text;
  final String navigation;
  final VoidCallback onPressed;
  final VoidCallback navigate;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: SizedBox(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: blue,
              ),
              onPressed: navigate,
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        InkWell(
          onTap: onPressed,
          child: Text(
            navigation,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        ),
      ],
    );
  }
}
