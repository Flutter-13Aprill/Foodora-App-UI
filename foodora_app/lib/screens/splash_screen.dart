import 'dart:async';
import 'package:flutter/material.dart';
import 'package:foodora_app/extensions/screens/get_size_screen.dart';
import 'package:foodora_app/screens/login_signup_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Timer to move to the next screen
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginSignupScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              //LinearGradient for the background color
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft,
                stops: [0.1, 0.9],
                colors: [
                  Color.fromRGBO(255, 0, 54, 1),
                  Color.fromRGBO(255, 0, 54, 0.5),
                ],
              ),
            ),
          ),
          Center(
            child:
            // Animation for the illustration
            TweenAnimationBuilder<double>(
              duration: const Duration(seconds: 2),
              tween: Tween(begin: 300, end: 375),
              builder: (BuildContext context, dynamic value, Widget? child) {
                return Image.asset(
                  "assets/images/logo.png",
                  width: value,
                  height: value,
                );
              },
            ),
          ),
          //Bottom image
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              "assets/images/vegitables.png",
              width: context.getWidth() + 80,
              height: context.getHeight() / 5,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
