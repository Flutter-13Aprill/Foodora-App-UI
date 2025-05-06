import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:foodora/Screens/entry_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const EntryScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromARGB(255, 255, 0, 54),
            Color.fromARGB(246, 254, 120, 149)
          ])),
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: Stack(
        children: [
          Center(
            child: Image.asset("assests/images/Title.png"),
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: Image.asset("assests/images/Vegitables.png"))
        ],
      ),
    ));
  }
}
