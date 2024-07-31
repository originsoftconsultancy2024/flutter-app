import 'package:flutter/material.dart';

class DatePickerWidget extends StatelessWidget {
  const DatePickerWidget({super.key, required this.date});

  final String date;

  @override
  Widget build(BuildContext context) {
    return Text(
      date,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
