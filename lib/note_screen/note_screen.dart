import 'package:flutter/material.dart';
import 'package:test_app/widgets/container.dart';
import 'package:test_app/widgets/decoration.dart';
import 'package:test_app/widgets/icon.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const Center(
                child: Text(
                  "NOTE MAKING",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                "128 NOTE TODAY",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ContainerWidget(
                    title: "CURRENT",
                  ),
                  const ContainerWidget(
                    title: "New",
                  ),
                  IconWidget(
                    icon: Icons.menu,
                    color: Colors.grey.shade300,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      DecorationWidget(
                        title: "ROOM DECORATION",
                        date: "23 MAY 2024",
                        color: Colors.blue,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      DecorationWidget(
                        title: "ROOM DECORATION",
                        date: "23 MAY 2024",
                        color: Colors.green,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      DecorationWidget(
                        title: "ROOM DECORATION",
                        date: "23 MAY 2024",
                        color: Colors.red,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      DecorationWidget(
                        title: "ROOM DECORATION",
                        date: "23 MAY 2024",
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      DecorationWidget(
                        title: "ROOM DECORATION",
                        date: "23 MAY 2024",
                        color: Colors.purple,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      DecorationWidget(
                        title: "ROOM DECORATION",
                        date: "23 MAY 2024",
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}