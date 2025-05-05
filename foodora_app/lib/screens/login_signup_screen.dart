import 'package:flutter/material.dart';
import 'package:foodora_app/extensions/screens/get_size_screen.dart';
import 'package:foodora_app/screens/home_screen.dart';

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({super.key});

  @override
  State<LoginSignupScreen> createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  final nameField = TextEditingController();
  final emailField = TextEditingController();
  final passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Center(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/images/logo_frame.png",
                  width: context.getWidth() + 205,
                  height: context.getHeight() / 3,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: context.getWidth() + 140,
                  height: context.getHeight() / 1.8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        spreadRadius: 5.0,
                        blurRadius: 7,
                        offset: Offset(3, 6),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              width: 2,
                              color: Colors.grey.shade300,
                            ),
                          ),
                          // Tab Bar
                          child: TabBar(
                            dividerColor: Colors.white,
                            indicatorColor: Colors.red,
                            indicator: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            indicatorSize: TabBarIndicatorSize.tab,
                            labelColor: Colors.white,
                            unselectedLabelColor: Colors.red,

                            tabs: [Tab(text: 'Log in'), Tab(text: 'Sign in')],
                          ),
                        ),
                        SizedBox(
                          height: 400,
                          child: TabBarView(
                            children: [
                              Column(
                                spacing: 16,
                                children: [
                                  SizedBox(height: 8),
                                  // TextField for email
                                  TextField(
                                    controller: emailField,
                                    decoration: InputDecoration(
                                      hintText: "Enter your email",
                                      labelText: "Email",
                                    ),
                                  ),

                                  // TextField for password
                                  TextField(
                                    controller: passwordField,
                                    decoration: InputDecoration(
                                      hintText: "Enter your password",
                                      labelText: "Password",
                                    ),
                                  ),

                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      fixedSize: Size(
                                        context.getWidth() + 100,
                                        context.getHeight() / 18,
                                      ),
                                      backgroundColor: Colors.red,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => HomeScreen(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Next',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Forgot Password?",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Or",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Row(
                                    spacing: 16,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/facebook.png',
                                        width: context.getWidth() / 5,

                                        height: context.getHeight() / 16,
                                        fit: BoxFit.cover,
                                      ),
                                      Image.asset(
                                        'assets/images/x.png',
                                        width: context.getWidth() / 5,

                                        height: context.getHeight() / 16,
                                        fit: BoxFit.cover,
                                      ),
                                      Image.asset(
                                        'assets/images/google.png',
                                        width: context.getWidth() / 5,

                                        height: context.getHeight() / 20,
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                              Column(
                                spacing: 16,
                                children: [
                                  // TextField for email
                                  TextField(
                                    controller: emailField,
                                    decoration: InputDecoration(
                                      hintText: "Enter your email",
                                      labelText: "Email",
                                    ),
                                  ),

                                  // TextField for password
                                  TextField(
                                    controller: passwordField,
                                    decoration: InputDecoration(
                                      hintText: "Enter your password",
                                      labelText: "Password",
                                    ),
                                  ),
                                  TextField(
                                    controller: passwordField,
                                    decoration: InputDecoration(
                                      hintText: "Enter your password",
                                      labelText: "Confirm Password",
                                    ),
                                  ),
                                  // Button to go to home screen
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      fixedSize: Size(
                                        context.getWidth() + 100,
                                        context.getHeight() / 18,
                                      ),
                                      backgroundColor: Colors.red,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => HomeScreen(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Next',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),

                                  Text(
                                    "Or",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Row(
                                    spacing: 16,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/facebook.png',
                                        width: context.getWidth() / 5,

                                        height: context.getHeight() / 16,
                                        fit: BoxFit.cover,
                                      ),
                                      Image.asset(
                                        'assets/images/x.png',
                                        width: context.getWidth() / 5,

                                        height: context.getHeight() / 16,
                                        fit: BoxFit.cover,
                                      ),
                                      Image.asset(
                                        'assets/images/google.png',
                                        width: context.getWidth() / 5,

                                        height: context.getHeight() / 20,
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  "assets/images/vegitables.png",
                  width: context.getWidth() + 80,
                  height: context.getHeight() / 5,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
