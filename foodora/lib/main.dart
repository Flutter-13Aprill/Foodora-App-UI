import 'package:flutter/material.dart';
import 'package:foodora/Screens/dashboard_screen.dart';
import 'package:foodora/Screens/entry_screen.dart';
import 'package:foodora/Screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: WelcomeScreen());
  }
}
