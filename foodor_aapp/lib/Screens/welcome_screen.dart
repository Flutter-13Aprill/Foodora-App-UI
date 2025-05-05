import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodor_aapp/Screens/login_screen.dart';

// StatefulWidget for the welcome screen of the application.
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreen();
}

class _WelcomeScreen extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    // Delay for 10 seconds before navigating to the LoginScreen.
    Future.delayed(const Duration(seconds: 10), () {
      // PushReplacement navigates to the LoginScreen and replaces the current WelcomeScreen in the navigation stack.
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (context) =>
                const LoginScreen()), // Creates the route to the LoginScreen.
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar with a specific red background color.
      appBar: AppBar(backgroundColor: const Color(0XFFFF0036)),
      // Background color of the entire screen, set to the same red.
      backgroundColor: const Color(0XFFFF0036),
      // SafeArea ensures that the content is not obscured by system UI elements like the status bar.
      body: SafeArea(
        child: Column(
          children: [
            // Provides vertical spacing from the top.
            SizedBox(height: 290.h), // Uses responsive height based on screen size.
            // Centers the row containing the logo and app name.
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, // Centers horizontally.
                crossAxisAlignment: CrossAxisAlignment.center, // Centers vertically within the row.
                children: [
                  // Container for the app logo image.
                  Container(
                    width: 50.w, // Responsive width for the logo.
                    height: 50.h, // Responsive height for the logo.
                    child: Image.asset("assets/images/4.png"), // Displays the logo image.
                  ),
                  // Horizontal spacing between the logo and the app name.
                  SizedBox(width: 8.w), // Responsive width for spacing.
                  // Text widget displaying the app name.
                  Text(
                    "foodra  ",
                    style: TextStyle(
                        fontSize: 40.w, color: Colors.white), // White text with responsive font size.
                  ),
                ],
              ),
            ),
            // Provides vertical spacing before the bottom image.
            SizedBox(height: 204.h), // Responsive height for spacing.
            // Row that aligns its content to the end (right side).
            Row(
              mainAxisAlignment: MainAxisAlignment.end, // Aligns to the right.
              crossAxisAlignment: CrossAxisAlignment.end, // Aligns to the bottom within the row.
              children: [
                // Container for the vegetables image at the bottom right.
                Container(
                  width: 300,
                  height: 190,
                  child: Image.asset(
                    "assets/images/Vegitables.png",
                    fit: BoxFit.fill, // Makes the image fill the container.
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}