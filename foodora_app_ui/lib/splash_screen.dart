import 'package:flutter/material.dart';
import 'package:foodora_app_ui/login_screen.dart';
import 'package:foodora_app_ui/Extensions_screen/screen_size.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    
    Future.delayed(Duration(seconds: 11), () {
            if (!mounted) return;
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset('assets/images/splash.png',height:context.getheight() ,width:context.getwidth(),fit: BoxFit.fill,)
    );
  }
}
