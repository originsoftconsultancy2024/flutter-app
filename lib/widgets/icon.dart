import 'package:flutter/material.dart';

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
        onPressed: () {},
        icon: Icon(
          icon,
        ),
      ),
    );
  }
}
