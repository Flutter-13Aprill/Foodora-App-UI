import 'package:flutter/material.dart';
import 'package:foodora_app_ui/widgets/login_signup_card_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 428,
            height: 317,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/p.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 428,
            height: 317,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/food.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Container(
              height: 464,
              width: 310,
              padding: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color:  Color.fromRGBO(0, 0, 0, 0.2),
                    blurRadius: 16,
                    offset: Offset(4, 4),
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: LoginSignupCardWidget(),
            ),
          ),
          Positioned(
            bottom: -32,
            right: -72,
            child: Container(
              width: 397,
              height: 230,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Vegitables.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 96,
            left: 104,
            child: Container(
              width: 140.1422576904297,
              height: 25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/logo.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
