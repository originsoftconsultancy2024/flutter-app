import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test_app/constraints/colors.dart';

class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  _AddNoteState createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  double position = 55.0;

  void _updatePosition(DragUpdateDetails details) {
    setState(() {
      double newPosition = position + details.delta.dx;
      if (newPosition < 0) {
        newPosition = 0;
      } else if (newPosition > 110) {
        newPosition = 110;
      }
      position = newPosition;
    });
  }

  String getFormattedDate() {
    final now = DateTime.now();
    final formatter = DateFormat('MMMM-dd-yyyy');
    return formatter.format(now);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          elevation: 0,
          onPressed: () {},
          child: const Text(
            "DONE",
            style: TextStyle(
              color: blue,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 50,
                ),
                child: Text(
                  "ADD NOTE",
                  style: TextStyle(
                    color: blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: Row(
                children: [
                  Image.asset(
                    "assets/Ellipse 18.png",
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "Safiullah@gmail.com",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    "ALL-DAY",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  GestureDetector(
                    onPanUpdate: _updatePosition,
                    child: Container(
                      height: 40,
                      width: 140,
                      decoration: BoxDecoration(
                        color: blue,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: position,
                            top: 5,
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 45,
              ),
              child: Row(
                children: [
                  Text(
                    getFormattedDate(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 45,
                vertical: 30,
              ),
              child: Row(
                children: [
                  Text(
                    "DOES NOT REPEAT",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Divider(
                thickness: 1.5,
                color: Colors.black,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 45,
                vertical: 40,
              ),
              child: Row(
                children: [
                  Text(
                    "ADD DETAIL",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
