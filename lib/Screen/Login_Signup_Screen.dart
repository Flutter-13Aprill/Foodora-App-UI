import 'package:flutter/material.dart';
import 'package:foodora_app_ui/Screen/Food_Dashboard_Screen.dart';

class Login_Signup_Screen extends StatefulWidget {
  Login_Signup_Screen({super.key});
  @override
  State<Login_Signup_Screen> createState() => _LoginSignupScreenState();
}
class _LoginSignupScreenState extends State<Login_Signup_Screen> {
  bool isLogin = true; // Toggle between login and signup
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Top image with rounded bottom-right corner
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(60)),
              child: Image.asset(
                "assets/Login-Signup-Logo.png",
                height: 330,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Login/Signup form
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.only(
                top: 300,
                bottom: 60,
                left: 40,
                right: 40,
              ),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Login/Signup toggle buttons
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.grey[300]!),
                      ),
                      child: Stack(
                        children: [
                          // Animated background highlight
                          AnimatedAlign(
                            alignment:
                                isLogin
                                    ? Alignment.centerLeft
                                    : Alignment.centerRight,
                            duration: Duration(milliseconds: 200),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              decoration: BoxDecoration(
                                color: Color(0xFFE60023),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              // Log In button
                              Expanded(
                                child: GestureDetector(
                                  onTap: () => setState(() => isLogin = true),
                                  child: Center(
                                    child: Text(
                                      "Log In",
                                      style: TextStyle(
                                        color:
                                            isLogin ? Colors.white : Colors.red,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // Sign Up button
                              Expanded(
                                child: GestureDetector(
                                  onTap: () => setState(() => isLogin = false),
                                  child: Center(
                                    child: Text(
                                      "Sign Up",
                                      style: TextStyle(
                                        color:
                                            !isLogin
                                                ? Colors.white
                                                : Colors.red,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),

                    // Email or username input
                    TextField(
                      style: TextStyle(color: Colors.grey),
                      decoration: InputDecoration(
                        hintText: 'Enter email or username',
                        hintStyle: TextStyle(color: Colors.grey),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[300]!),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),

                    // Password input
                    TextField(
                      obscureText: true,
                      style: TextStyle(color: Colors.grey),
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.grey),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[300]!),
                        ),
                      ),
                    ),

                    // Confirm password only for signup
                    if (!isLogin)
                      Column(
                        children: [
                          SizedBox(height: 10),
                          TextField(
                            obscureText: true,
                            style: TextStyle(color: Colors.grey),
                            decoration: InputDecoration(
                              hintText: 'Confirm Password',
                              hintStyle: TextStyle(color: Colors.grey),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey[300]!,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    SizedBox(height: 30),

                    // Submit button (Login or Signup)
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Food_Dashboard_Screen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFE60023),
                          padding: EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text(
                          isLogin ? 'Log In' : 'Sign Up',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    // Forgot Password text only on login
                    if (isLogin)
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    SizedBox(height: 20),

                    // OR text and social login image
                    Text('OR', style: TextStyle(color: Colors.grey)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/Sotial-Media.png',
                          height: 100,
                          width: 260,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Bottom fruits image
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              'assets/Fruits.png',
              height: 180,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
