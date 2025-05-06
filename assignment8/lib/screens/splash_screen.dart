import 'dart:async';

import 'package:assignment8/screens/login_tab_bar_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

// here where the splash scereen start and stays 3 second
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    //delation
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginTabBar()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //designing the splash screen
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              const Color.fromARGB(255, 255, 9, 61),

              const Color.fromARGB(255, 255, 110, 140),
            ],
          ),
        ),
        //stack for the image and name foodora
        child: Stack(
          children: [
            Center(
              child: Image.asset(
                'assets/project_images/foodora_splash_screen.png',
              ),
            ),
            //vegies
            Container(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                'assets/project_images/vegtiables_splash_screen.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
