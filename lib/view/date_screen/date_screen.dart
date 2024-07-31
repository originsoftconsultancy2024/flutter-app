import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/view/add_delete.dart';
import 'package:test_app/widgets/date_picker.dart';

class DateScreen extends StatelessWidget {
  const DateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF007AFF),
        body: const Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 30,
                horizontal: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DatePickerWidget(
                    date: "  01\nMAY",
                  ),
                  DatePickerWidget(
                    date: "  02\nMAY",
                  ),
                  DatePickerWidget(
                    date: "  03\nMAY",
                  ),
                  DatePickerWidget(
                    date: "  04\nMAY",
                  ),
                  DatePickerWidget(
                    date: "  05\nMAY",
                  ),
                  DatePickerWidget(
                    date: "  06\nMAY",
                  ),
                  DatePickerWidget(
                    date: "  07\nMAY",
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          onPressed: () {
            Get.to(() => const AddDeleteNote());
          },
          child: const Icon(
            Icons.add,
            color: Color(0xFF007AFF),
          ),
        ),
      ),
    );
  }
}
