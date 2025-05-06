import 'package:flutter/material.dart';

class CircleDot extends StatelessWidget {
  const CircleDot({super.key, this.isActive = false});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Colors.deepOrange : Colors.grey,
      ),
    );
  }
}