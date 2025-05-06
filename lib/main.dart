import 'package:flutter/material.dart';

// --- Screen
import 'package:foodora/screens/splash_screen.dart';

// -- External Package
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        splashFactory: NoSplash.splashFactory
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen()
    );
  }
}
