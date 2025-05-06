import 'package:flutter/material.dart';
import 'package:foodora/custom_navbar/categories_navbar.dart';
import 'package:foodora/screen/food_screen.dart';
import 'package:foodora/screen/login_screen.dart';
import 'package:foodora/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen());
  }
}
