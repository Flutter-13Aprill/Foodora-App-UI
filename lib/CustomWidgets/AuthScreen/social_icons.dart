import 'package:flutter/material.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          style: ButtonStyle(elevation: WidgetStateProperty.all(10)),

          icon: Image.asset(
            'assets/images/facebook.png',
            height: 60,
            width: 60,
          ),
          onPressed: () {
            // Handle Facebook login
          },
        ),
        const SizedBox(width: 20),
        IconButton(
          style: ButtonStyle(elevation: WidgetStateProperty.all(10)),
          icon: Image.asset('assets/images/twitter.png', height: 60, width: 60),
          onPressed: () {},
        ),
        const SizedBox(width: 20),
        IconButton(
          style: ButtonStyle(elevation: WidgetStateProperty.all(10)),

          icon: Image.asset('assets/images/google.png', height: 60, width: 60),
          onPressed: () {
            // Handle Google login
          },
        ),
      ],
    );
  }
}
