import 'dart:async';
import 'package:assignment8/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      ),
    );
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (__) => const Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // height: 300,
        // width: 300,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              // Color.fromARGB(255, 255, 0, 54),
              Color.fromARGB(255, 255, 0, 54),
              Color.fromARGB(128, 255, 103, 134),
            ],
          ),
        ),
        child: Align(
          alignment: Alignment.bottomRight,

          child: Stack(
            children: [
              Positioned(
                bottom: -35,
                right: -72,
                child: SizedBox(
                  height: 230,
                  width: 397,
                  child: Image.asset("assets/images/image1.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100.0),
                child: Center(
                  child: Row(
                    children: [
                      Image.asset("assets/images/image2.png"),

                      SizedBox(width: 10),
                      Text(
                        "foodora",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
