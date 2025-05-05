import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // For responsive screen dimensions
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodor_aapp/Screens/dashboard_screen.dart';
import 'package:foodor_aapp/Screens/signup_screen.dart'; // For social media icons

// StatefulWidget is used because the state of this screen might change over time (e.g., during user interaction).
class LoginScreen extends StatefulWidget {
  // Constructor for the LoginScreen widget. The 'key' argument is optional
  // and used for identifying widgets in the widget tree. 'super.key' passes
  // the key up to the parent class (StatefulWidget).
  const LoginScreen({super.key});

  // Creates the mutable state for this widget. Flutter calls this method
  // to create a new State object whenever it needs to build the widget.
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

// This is the State class for the LoginScreen widget. It holds the mutable
// data that can change during the widget's lifecycle. The underscore '_'
// at the beginning of the class name makes it private to this file.
class _LoginScreenState extends State<LoginScreen> {
  // The 'build' method is the heart of any Flutter widget. It describes how
  // to display the widget in terms of other, lower-level widgets.
  @override
  Widget build(BuildContext context) {
    // Scaffold provides the basic visual structure for a material design screen.
    // It typically includes an AppBar, Body, FloatingActionButton, and more.
    return Scaffold(
      // The 'body' property holds the main content of the screen. Here, it's a Column.
      body: Column(
        // A Column widget arranges its children in a vertical line.
        children: [
          // Stack is a widget that positions its children relative to the edges
          // of its own box. The last child added to the Stack is painted on top.
          Stack(
            // 'clipBehavior' controls whether the children of the Stack can paint
            // outside the bounds of the Stack. 'Clip.none' allows them to do so.
            clipBehavior: Clip.none,
            // The children of the Stack are positioned on top of each other.
            children: [
              // A Container is a versatile widget for painting, sizing, positioning,
              // and holding other widgets. Here, it's used to display the background image.
              Container(
                // 'width' and 'height' are set using screen width and height
                // percentages for responsiveness (thanks to flutter_screenutil).
                width: 400.w,
                height: 290.h,
                // Image.asset displays an image from the application's assets.
                // 'fit: BoxFit.fill' makes the image fill the entire container,
                // potentially stretching or distorting it.
                child: Image.asset("assets/images/21.png", fit: BoxFit.fill),
              ),

              // Positioned is used to place a widget at a specific offset from
              // the edges of its Stack parent.
              Positioned(
                // 'top' and 'left' define the position of the top-left corner
                // of the Card relative to the Stack.
                top: 220,
                left: 50,
                // Card is a Material Design card with slightly rounded corners and a shadow.
                child: Card(
                  // 'shape' defines the appearance of the Card's border and background.
                  // RoundedRectangleBorder creates a rectangle with rounded corners.
                  shape: RoundedRectangleBorder(
                    // BorderRadius.circular controls the radius of the corners.
                    borderRadius: BorderRadius.circular(
                      40.r,
                    ), // Rounded corners
                  ),
                  // 'shadowColor' sets the color of the shadow cast by the Card.
                  shadowColor: Colors.grey.withOpacity(
                    0.5,
                  ), // Shadow color with some transparency
                  // 'elevation' controls the size of the shadow. Higher values create a larger shadow.
                  elevation: 8,
                  // The child of the Card is a Container that holds the login form elements.
                  child: Container(
                    // 'padding' adds space around the content of the Container.
                    padding: EdgeInsets.only(top: 20.w),
                    // 'width' and 'height' define the dimensions of the Container.
                    width: 340,
                    height: 460,
                    // 'decoration' allows styling the background, border, and shape of the Container.
                    decoration: BoxDecoration(
                      // 'color' sets the background color of the Container (the card's inner area).
                      color: Colors.white, // Card background color
                      // 'borderRadius' again defines the rounded corners of this inner Container.
                      borderRadius: BorderRadius.circular(40),
                    ),
                    // The child of this Container is another Stack, allowing elements
                    // within the card to be positioned relative to each other.
                    child: Stack(
                      // The children of this inner Stack are the login form elements.
                      children: [
                        // MaterialButton is a button based on Material Design principles.
                        MaterialButton(
                          onPressed: () {},

                          // The child of the button is a Container that styles the "Log In" text.
                          child: Container(
                            // 'margin' adds space around the Container.
                            margin: EdgeInsets.only(left: 20),
                            // 'width' and 'height' define the dimensions of the button's visual area.
                            width: 110.w,
                            height: 32.h,
                            // 'decoration' styles the button's background and shape.
                            decoration: BoxDecoration(
                              // 'color' sets the background color of the "Log In" button.
                              color: Color(0XFFFF0036),
                              // 'borderRadius' rounds the corners of the button.
                              borderRadius: BorderRadius.circular(20),
                            ),
                            // The child of this Container is the "Log In" text.
                            child: Text(
                              "Log In",
                              textAlign: TextAlign.center,
                              // 'style' allows customization of the text's appearance.
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        // Positioned is used to place the "Sign Up" button at a specific
                        // location within the inner Stack.
                        Positioned(
                          left: 118,
                          child: MaterialButton(
                            onPressed: () {}, // Currently does nothing
                            child: Container(
                              margin: EdgeInsets.only(left: 14),
                              padding: EdgeInsets.only(top: 4),
                              width: 110.w,
                              height: 32,
                              decoration: BoxDecoration(
                                // 'border' defines the border around the "Sign Up" button.
                                border: Border(
                                  top: BorderSide(
                                    color: const Color.fromARGB(
                                      255,
                                      187,
                                      196,
                                      187,
                                    ),
                                  ),
                                  right: BorderSide(
                                    color: const Color.fromARGB(
                                      255,
                                      187,
                                      196,
                                      187,
                                    ),
                                  ),
                                  bottom: BorderSide(
                                    color: const Color.fromARGB(
                                      255,
                                      187,
                                      196,
                                      187,
                                    ),
                                  ),
                                ),
                                // 'borderRadius' rounds the corners of the button.
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                "Sign Up",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        // TextField allows users to input text.
                        Positioned(
                          top: 65.h,
                          left: 30.w,
                          right: 30.w,
                          child: TextField(
                            // 'decoration' provides visual cues and styling for the TextField.
                            decoration: InputDecoration(
                              label: Text(
                                "Enter email or username",
                              ), // Label text
                              hintText:
                                  "Enter email or username", // Placeholder text
                            ),
                          ),
                        ),
                        // Another TextField for password input.
                        Positioned(
                          top: 130.h,
                          left: 30.w,
                          right: 30.w,
                          child: TextField(
                            decoration: InputDecoration(
                              label: Text("Password"),
                              hintText: "Password",
                            ),
                          ),
                        ),
                        // The main "log in " button at the bottom of the card.
                        Positioned(
                          top: 230.h,
                          child: MaterialButton(
                            // 'onPressed' is a callback function that is executed when the button is pressed.
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DashboardScreen(),
                                ),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.all(16),
                              width: 240.w,
                              height: 60.h,
                              decoration: BoxDecoration(
                                color: Color(0XFFFF0036), // Red background
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Text(
                                "Log In",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        // Text for the "Forgot Password?" link.
                        Positioned(
                          top: 290.h,
                          child: Container(
                            //go SignupScreen
                            margin: EdgeInsets.only(left: 170),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                  color: Color(0XFFA8A7A7),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // Text for the "OR" separator.
                        Positioned(
                          top: 335.h,
                          left: 150,
                          child: Text(
                            "OR",
                            style: TextStyle(
                              color: Color(0XFFA8A7A7),
                              fontSize: 14,
                            ),
                          ),
                        ),
                        // Row to arrange social media icons horizontally.
                        Positioned(
                          top: 360.h,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: 50), // Adds horizontal space
                              // Container to style the Facebook icon's background.
                              Container(
                                width: 55,
                                height: 60,
                                decoration: BoxDecoration(
                                  shape:
                                      BoxShape
                                          .circle, // Makes the container circular
                                  border: Border.all(
                                    color: Color.fromARGB(255, 210, 210, 232),
                                    width: 1.5,
                                  ),
                                ),
                                // Icon from the font_awesome_flutter package.
                                child: Icon(
                                  FontAwesomeIcons.facebookF,
                                  size: 40,
                                  color: Color(0XFF3A589B), // Facebook blue
                                ),
                              ),
                              SizedBox(width: 24), // Adds horizontal space
                              // Container for the Twitter icon.
                              Container(
                                width: 55,
                                height: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Color.fromARGB(255, 210, 210, 232),
                                    width: 1.5,
                                  ),
                                ),
                                child: Icon(
                                  FontAwesomeIcons.twitter,
                                  size: 40,
                                  color: Color.fromARGB(
                                    255,
                                    31,
                                    67,
                                    145,
                                  ), // Twitter blue
                                ),
                              ),
                              SizedBox(width: 20), // Adds horizontal space
                              // Container for the Google icon.
                              Container(
                                width: 55,
                                child: Icon(
                                  FontAwesomeIcons.google,
                                  size: 40,
                                  color: Color.fromARGB(
                                    255,
                                    171,
                                    83,
                                    51,
                                  ), // Google red-ish
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
          // Adds vertical space below the Stack.
          SizedBox(height: 20.h),
          // Another Container to display an image at the bottom.
          Container(
            margin: EdgeInsets.only(top: 380, left: 220),
            child: Image.asset("assets/images/9.png", fit: BoxFit.fill),
          ),
        ],
      ),
    );
  }
}
