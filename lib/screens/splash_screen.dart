import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// -- Screen
import 'package:foodora/screens/authentication_screen.dart';

// -- External Packages
import 'package:flutter_svg/flutter_svg.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    // To hide the status bar and the indictor
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    
    // To simulates as native splash screen
    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AuthenticationScreen()));
    });
  }

  @override
  void dispose() {
    super.dispose();

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
  }


  @override
  Widget build(BuildContext context) {
    
    final height = MediaQuery.sizeOf(context).height;
      
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(255, 0, 54, 1),
              Color.fromRGBO(255, 0, 54, 0.5)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        child: Column(
          children: [
            
            SizedBox(height: height * 0.5),

            SvgPicture.asset('assets/splash_Screen/splash_screen_svgs/foodora_logo.svg'),
            
            SizedBox(height: height * 0.253),

            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset('assets/splash_Screen/splash_screen_images/vegetables-4.png')
            ),




          ],
        ),
      ),
    );
  }
}