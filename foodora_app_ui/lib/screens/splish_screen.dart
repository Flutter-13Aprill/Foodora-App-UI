import 'package:flutter/material.dart';
import 'package:foodora_app_ui/screens/login_screen.dart';

class SplishScreen extends StatelessWidget {
  const SplishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
    });
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(255, 0, 54, 1),
              Color.fromRGBO(255, 0, 54, 0.5),
            ],
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Image.asset(
                width: 224,
                height: 40,
                "assets/images/logo.png",
              ),
            ),
            Positioned(
              bottom: -16,
              right: -40,
              child: Image.asset(
                width: 397,
                height: 230,
                "assets/images/Vegitables.png",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
