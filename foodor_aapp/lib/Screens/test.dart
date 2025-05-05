import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tst extends StatefulWidget {
  const Tst({super.key});

  @override
  State<Tst> createState() => _TstState();
}

class _TstState extends State<Tst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Stack to overlay multiple widgets (background image + card)
          Stack(
            clipBehavior: Clip.none, // Allows widgets to overflow outside the stack
            children: [
              // Background image at the top
              Container(
                width: 500.w, // Full width of the screen
                height: 290.h, // Height of the background image
                child: Image.asset(
                  "assets/images/5.jpg", // Path to the image asset
                  fit: BoxFit.fill, // Ensures the image fills the container
                ),
              ),

              // Positioned card containing the login and sign-up form
              Positioned(
                top: 220, // Position from the top
                left: 50, // Position from the left
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.r), // Rounded corners for the card
                  ),
                  shadowColor: Colors.grey.withOpacity(0.5), // Shadow for the card
                  elevation: 8, // Elevation for a raised shadow effect
                  child: Container(
                    padding: EdgeInsets.only(top: 20.w), // Top padding for the content inside the card
                    width: 340, // Width of the card
                    height: 460, // Height of the card
                    decoration: BoxDecoration(
                      color: Colors.white, // Card background color
                      borderRadius: BorderRadius.circular(40), // Rounded corners for the container
                    ),
                    child: Stack(
                      children: [
                        // "Log In" button with red background (moved to the left)
                        Positioned(
                          left: 20, // Position from the left (moved to the left side)
                          child: MaterialButton(
                            onPressed: () {}, // Click action for the "Log In" button
                            child: Container(
                              margin: EdgeInsets.only(left: 14), // Margin from the left
                              padding: EdgeInsets.only(top: 4), // Padding inside the button
                              width: 110.w, // Width of the button
                              height: 32, // Height of the button
                              decoration: BoxDecoration(
                                color: Color(0XFFFF0036), // Red background color
                                borderRadius: BorderRadius.circular(20), // Rounded corners for the button
                              ),
                              child: Center(
                                child: Text(
                                  "Log In", // Button label
                                  style: TextStyle(color: Colors.white), // White text color for contrast
                                  textAlign: TextAlign.center, // Center align the text
                                ),
                              ),
                            ),
                          ),
                        ),

                        // "Sign Up" button with border
                        Positioned(
                          left: 130, // Position from the left
                          child: MaterialButton(
                            onPressed: () {}, // Click action for the "Sign Up" button
                            child: Container(
                              margin: EdgeInsets.only(left: 14), // Margin from the left
                              width: 110.w, // Width of the button
                              height: 32.h, // Height of the button
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color.fromARGB(255, 187, 196, 187), // Grey border color
                                ),
                                borderRadius: BorderRadius.circular(20), // Rounded corners for the button
                              ),
                              child: Center(
                                child: Text(
                                  "Sign Up", // Button label
                                  textAlign: TextAlign.center, // Center align the text
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 187, 196, 187), // Grey text color
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        // TextField for entering email or username
                        Positioned(
                          top: 65.h, // Position from the top
                          left: 30.w, // Position from the left
                          right: 30.w, // Position from the right
                          child: TextField(
                            decoration: InputDecoration(
                              label: Text("Enter email or username"), // Label for the input
                              hintText: "Enter email or username", // Placeholder text
                            ),
                          ),
                        ),

                        // TextField for entering password
                        Positioned(
                          top: 130.h, // Position from the top
                          left: 30.w, // Position from the left
                          right: 30.w, // Position from the right
                          child: TextField(
                            decoration: InputDecoration(
                              label: Text("Password"), // Label for the input
                              hintText: "Password", // Placeholder text
                            ),
                          ),
                        ),

                        // "Sign Up" button at the bottom of the card
                        Positioned(
                          top: 230.h, // Position from the top
                          child: MaterialButton(
                            onPressed: () {}, // Click action for the "Sign Up" button
                            child: Container(
                              padding: EdgeInsets.all(16), // Padding inside the button
                              width: 240.w, // Width of the button
                              height: 60.h, // Height of the button
                              decoration: BoxDecoration(
                                color: Color(0XFFFF0036), // Red background color
                                borderRadius: BorderRadius.circular(24), // Rounded corners for the button
                              ),
                              child: Text(
                                "Sign Up", // Button label
                                style: TextStyle(
                                  color: Colors.white, // White text color for contrast
                                  fontSize: 20, // Font size for the text
                                ),
                                textAlign: TextAlign.center, // Center align the text
                              ),
                            ),
                          ),
                        ),

                        // "Forgot Password?" link
                        Positioned(
                          top: 300.h, // Position from the top
                          child: Container(
                            margin: EdgeInsets.only(left: 170), // Margin from the left
                            child: Text(
                              "Forgot Password?", // Link text
                              style: TextStyle(
                                color: Color(0XFFA8A7A7), // Grey text color
                                fontSize: 14, // Font size for the text
                              ),
                            ),
                          ),
                        ),

                        // "OR" text
                        Positioned(
                          top: 335.h, // Position from the top
                          left: 150, // Position from the left
                          child: Text(
                            "OR", // Separator text
                            style: TextStyle(
                              color: Color(0XFFA8A7A7), // Grey text color
                              fontSize: 14, // Font size for the text
                            ),
                          ),
                        ),

                        // Social media icons (Facebook, Twitter, Google)
                        Positioned(
                          top: 360.h, // Position from the top
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: 50), // Space from the left
                              // Facebook icon
                              Container(
                                width: 55, // Width of the icon container
                                height: 60, // Height of the icon container
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle, // Circular shape
                                  border: Border.all(
                                    color: Color.fromARGB(255, 210, 210, 232), // Border color
                                    width: 1.5, // Border width
                                  ),
                                ),
                                child: Icon(
                                  FontAwesomeIcons.facebookF, // Facebook icon
                                  size: 40, // Icon size
                                  color: Color(0XFF3A589B), // Facebook blue color
                                ),
                              ),
                              SizedBox(width: 24), // Space between icons

                              // Twitter icon
                              Container(
                                width: 55, // Width of the icon container
                                height: 60, // Height of the icon container
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle, // Circular shape
                                  border: Border.all(
                                    color: Color.fromARGB(255, 210, 210, 232), // Border color
                                    width: 1.5, // Border width
                                  ),
                                ),
                                child: Icon(
                                  FontAwesomeIcons.twitter, // Twitter icon
                                  size: 40, // Icon size
                                  color: Color.fromARGB(255, 31, 67, 145), // Twitter blue color
                                ),
                              ),
                              SizedBox(width: 20), // Space between icons

                              // Google icon
                              Container(
                                width: 55, // Width of the icon container
                                child: Icon(
                                  FontAwesomeIcons.google, // Google icon
                                  size: 40, // Icon size
                                  color: Color.fromARGB(255, 171, 83, 51), // Google color
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          // Space below the card
          SizedBox(height: 20.h),

          // Footer image or logo
          Container(
            margin: EdgeInsets.only(top: 380, left: 220), // Position of the image
            child: Image.asset("assets/images/9.png", fit: BoxFit.fill), // Footer image
          ),
        ],
      ),
    );
  }
}