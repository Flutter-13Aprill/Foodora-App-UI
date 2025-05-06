import 'package:assignment8/features/auth/widget/auth_widget.dart';
import 'package:flutter/material.dart';

class BackgroundPage extends StatelessWidget {
  const BackgroundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Positioned(
        child: Stack(
          children: [
            Image.asset("asset/image/image.png", fit: BoxFit.contain),
            AuthWidget(),
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                "asset/image/vegetables-4.png",
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
