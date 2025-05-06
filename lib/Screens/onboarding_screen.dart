import 'package:flutter/material.dart';
import 'package:may3rd/Screens/auth_screen.dart';
import 'package:may3rd/data/screen_size.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => AuthScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/onboarding.png',
          fit: BoxFit.cover,
          width: context.screenWidth,
          height: context.screenHeight,
        ),
      ),
    );
  }
}
