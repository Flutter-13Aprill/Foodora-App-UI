import 'package:flutter/material.dart';
import 'package:foodora/widgets/tapbar_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [// have image and tapbar whidget log in sign up 
          Stack(children: [Image.asset('images/header.png'), TapbarWidget()]),
          Container(// Vegitables image 
            alignment: Alignment.bottomRight,
            child: Image.asset('images/Vegitables.png'),
          ),
        ],
      ),
    );
  }
}
