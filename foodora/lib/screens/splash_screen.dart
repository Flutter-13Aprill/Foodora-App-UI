import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodora/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> 
with SingleTickerProviderStateMixin{
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 5),(){
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => const LoginScreen()
        ));
    });
  }
  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, 
    overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(240, 255, 0, 54),
              const Color.fromARGB(255, 255, 103, 134),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          ),
        ),
        
          child: Stack(
            children: [
              // This positions the Vegitables image in the bottom right
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset('assets/Vegitables.png', width: 320),
              ),
              // This centers the logo in the screen
              Center(
                child: Image.asset('assets/logo.png', width: 240),
              ),
            ],
          )
        
      ),
    );
  }
}




