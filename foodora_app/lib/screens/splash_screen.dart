import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodora_app/screens/login_signup_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
// The splash screen displays the logo for 10 seconds, then transitions to the login/signup screen.

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 10), () {
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (_) => LoginSignupScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xffFF0036), Color(0x80FF0036)],
          ),
        ),

        child: Stack(
          children: [
            Center(
              child: Image.asset(
                "assets/images/app-logo-image.png",
                width: 250,
                height: 100,
              ),
            ),

            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset("assets/images/vegitables-image.png"),
            ),
          ],
        ),
      ),
    );
  }
}
