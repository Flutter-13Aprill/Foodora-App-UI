import 'package:flutter/material.dart';
import 'package:foodora_app_ui/screens/home_screen.dart';

import 'package:foodora_app_ui/screens/log_in_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     theme: ThemeData(
      useMaterial3: false,
     ),
     home: const LoginScreen(),
    );
  }
}

