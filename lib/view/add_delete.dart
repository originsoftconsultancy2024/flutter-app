import 'package:flutter/material.dart';

class AddDeleteNote extends StatelessWidget {
  const AddDeleteNote({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF007AFF),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: const CircleBorder(),
          child: const Icon(
            Icons.add,
            color: Color(0xFF007AFF),
          ),
        ),
      ),
    );
  }
}
