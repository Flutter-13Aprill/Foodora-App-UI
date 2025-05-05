import 'package:flutter/material.dart';
import 'package:foodora_app_ui/Screen/Login_Signup_Screen.dart';

// Welcome screen shown initially
class Welcome_Screen extends StatefulWidget {
  const Welcome_Screen({super.key});

  @override
  State<Welcome_Screen> createState() => _Welcome_ScreenState();
}

class _Welcome_ScreenState extends State<Welcome_Screen> {
  @override
  void initState() {
    super.initState();
    // Delay 3 seconds, then navigate to login/signup screen
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login_Signup_Screen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Fullscreen background image
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Logo.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
