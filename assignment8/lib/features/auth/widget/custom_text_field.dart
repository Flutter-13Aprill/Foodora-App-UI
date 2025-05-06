import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextField(decoration: InputDecoration(hintText: text));
  }
}
