import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/view/date_screen/date_screen.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key, required this.icon, required this.color});

  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 50,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: () {
          Get.to(() => const DateScreen());
        },
        icon: Icon(
          icon,
        ),
      ),
    );
  }
}
