import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container( //contaner to colors the all bage and to use LinearGradient
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffff5f6D), Color.fromARGB(255, 213, 74, 74)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(// have two images
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 400, 20, 276),
              child: Container(
                alignment: Alignment.center,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(height: 40),
            Container(
              alignment: Alignment.bottomRight,
              child: Image.asset('images/Vegitables 1.png'),
            ),
          ],
        ),
      ),
    );
  }
}
