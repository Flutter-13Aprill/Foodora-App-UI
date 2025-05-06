import 'package:flutter/material.dart';
import 'package:foodora/screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.1, 0.5, 1],
          colors: [
            Color.fromRGBO(255, 0, 54, 1),
            Color.fromRGBO(255, 53, 96, 1),

            Color.fromRGBO(255, 105, 137, 1),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 180, width: 100),
            Expanded(
              child: Center(child: Image.asset("assets/images/logo.png")),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset("assets/images/Vegitables.png"),
            ),
          ],
        ),
      ),
    );
  }
}
