import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreen();
}

class _SignupScreen extends State<SignupScreen> {
  // Controllers for handling user input in TextFields
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Stack to hold the background image and the sign-up form
          Stack(
            clipBehavior: Clip.none,
            children: [
              // Background image
              Container(
                width: 500.w,
                height: 290.h,
                child: Image.asset("assets/images/21.png", fit: BoxFit.fill),
              ),

              // Positioned card for the sign-up form
              Positioned(
                top: 220,
                left: 50,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      40.r,
                    ), // Rounded corners
                  ),
                  shadowColor: Colors.grey.withOpacity(0.5), // Shadow color
                  elevation: 8, // Elevation for card shadow
                  child: Container(
                    padding: EdgeInsets.only(top: 20.w),
                    width: 340,
                    height:
                        520, // Increased height to fit the "Confirm Password" field
                    decoration: BoxDecoration(
                      color: Colors.white, // Card background color
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Stack(
                      children: [
                        // Buttons ("Log In" and "Sign Up") at the top of the card
                        Stack(
                          children: [
                            // "Log In" button with border
                            Positioned(
                              left: 20.w,
                              child: MaterialButton(
                                onPressed: () {}, // Action for "Log In" button
                                child: Container(
                                  width: 110.w,
                                  height: 32.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      20,
                                    ), // Rounded corners
                                    border: Border.all(
                                      color: Color.fromARGB(
                                        255,
                                        187,
                                        196,
                                        187,
                                      ), // Border color
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Log In", // Button text
                                      textAlign: TextAlign.center,
                                      
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            // "Sign Up" button with red background
                            Positioned(
                              left: 110.w,
                              child: MaterialButton(
                                onPressed: () {}, // Action for "Sign Up" button
                                child: Container(
                                  width: 110.w,
                                  height: 32.h,
                                  decoration: BoxDecoration(
                                    color: Color(0XFFFF0036), // Red background
                                    borderRadius: BorderRadius.circular(
                                      20,
                                    ), // Rounded corners
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Sign Up", // Button text
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ), // White text color
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        // TextField for entering email or username
                        Positioned(
                          top: 65.h,
                          left: 30.w,
                          right: 30.w,
                          child: TextField(
                            controller:
                                _emailController, // Controller for email input
                            decoration: InputDecoration(
                              label: Text(
                                "Enter email or username",
                              ), // Field label
                              hintText:
                                  "Enter email or username", // Placeholder text
                            ),
                          ),
                        ),

                        // TextField for entering password
                        Positioned(
                          top: 130.h,
                          left: 30.w,
                          right: 30.w,
                          child: TextField(
                            controller:
                                _passwordController, // Controller for password input
                            decoration: InputDecoration(
                              label: Text("Password"), // Field label
                              hintText: "Password", // Placeholder text
                            ),
                          ),
                        ),

                        // TextField for confirming password
                        Positioned(
                          top: 195.h,
                          left: 30.w,
                          right: 30.w,
                          child: TextField(
                            controller:
                                _confirmPasswordController, // Controller for confirm password input
                            decoration: InputDecoration(
                              label: Text("Confirm Password"), // Field label
                              hintText: "Confirm Password", // Placeholder text
                            ),
                          ),
                        ),

                        // "Sign Up" button for form submission
                        Positioned(
                          top: 285.h,
                          child: MaterialButton(
                            onPressed: () {}, // Action for "Sign Up" button
                            child: Container(
                              padding: EdgeInsets.all(16),
                              width: 240.w,
                              height: 60.h,
                              decoration: BoxDecoration(
                                color: Color(0XFFFF0036), // Red background
                                borderRadius: BorderRadius.circular(
                                  24,
                                ), // Rounded corners
                              ),
                              child: Text(
                                "Sign Up", // Button text
                                style: TextStyle(
                                  color: Colors.white, // White text color
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),

                        // "OR" text between the buttons and social media icons
                        Positioned(
                          top: 375.h,
                          left: 150,
                          child: Text(
                            "OR", // Text
                            style: TextStyle(
                              color: Color(0XFFA8A7A7), // Grey text color
                              fontSize: 14,
                            ),
                          ),
                        ),

                        // Social media icons (Facebook, Twitter, Google)
                        Positioned(
                          top: 400.h,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: 50),
                              // Facebook icon
                              Container(
                                width: 55,
                                height: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle, // Circular container
                                  border: Border.all(
                                    color: Color.fromARGB(
                                      255,
                                      210,
                                      210,
                                      232,
                                    ), // Border color
                                    width: 1.5,
                                  ),
                                ),
                                child: Icon(
                                  FontAwesomeIcons.facebookF, // Facebook icon
                                  size: 40,
                                  color: Color(0XFF3A589B), // Icon color
                                ),
                              ),
                              SizedBox(width: 24),

                              // Twitter icon
                              Container(
                                width: 55,
                                height: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle, // Circular container
                                  border: Border.all(
                                    color: Color.fromARGB(
                                      255,
                                      210,
                                      210,
                                      232,
                                    ), // Border color
                                    width: 1.5,
                                  ),
                                ),
                                child: Icon(
                                  FontAwesomeIcons.twitter, // Twitter icon
                                  size: 40,
                                  color: Color.fromARGB(
                                    255,
                                    31,
                                    67,
                                    145,
                                  ), // Icon color
                                ),
                              ),
                              SizedBox(width: 20),

                              // Google icon
                              Container(
                                width: 55,
                                child: Icon(
                                  FontAwesomeIcons.google, // Google icon
                                  size: 40,
                                  color: Color.fromARGB(
                                    255,
                                    171,
                                    83,
                                    51,
                                  ), // Icon color
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

          // Spacing below the card
          SizedBox(height: 20.h),

          // Bottom image or logo
          Container(
            margin: EdgeInsets.only(top: 380, left: 220),
            child: Image.asset("assets/images/9.png", fit: BoxFit.fill),
          ),
        ],
      ),
    );
  }
}
