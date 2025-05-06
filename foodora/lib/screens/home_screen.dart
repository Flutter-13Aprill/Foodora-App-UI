import 'package:flutter/material.dart';
import 'package:foodora/screens/login_signup_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to LoginScreen after a 3-second delay
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginSignUpScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gradient background
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromRGBO(255, 0, 54, 1),
                  Color.fromRGBO(255, 0, 54, 0.5)
                ],
              ),
            ),
          ),
          // Centered logo image
          Center(
            child: Container(
              width: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Images/foodora.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          // Bottom right vegetable image
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 390,
              height: 230,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Images/Vegitables.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
