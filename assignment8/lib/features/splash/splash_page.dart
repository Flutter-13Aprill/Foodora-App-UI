import 'dart:async';

import 'package:assignment8/core/functions/navigation.dart';
import 'package:assignment8/core/theme/app_palette.dart';
import 'package:assignment8/features/auth/pages/background_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (time) {
      customReplacementNavigate(context, BackgroundPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppPalette.redColor, AppPalette.redColor2],
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset("asset/image/branding.png"),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset("asset/image/vegetables-4.png"),
            ),
          ],
        ),
      ),
    );
  }
}
