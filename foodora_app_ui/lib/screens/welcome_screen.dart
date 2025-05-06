import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 600,
        height: 990,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0XFFFF0036),
              Color(0x80FF0036)
            ]
          )
        ),
        child: Column(

        children: [
          SizedBox(height: 384,),
          Image.asset("lib/assets/images/logo.png"),
           SizedBox(height: 305),
          Padding(
            padding: const EdgeInsets.only(left:108),
            child: Image.asset("lib/assets/images/Vegitables.png"),
          ),
        ],
      ),
      )
    );
  }
}