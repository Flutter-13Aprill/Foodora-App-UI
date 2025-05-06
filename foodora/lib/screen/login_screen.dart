import 'package:flutter/material.dart';
import 'package:foodora/screen/food_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset("assets/images/topimage.png"),
            ),
            Positioned(
              top: 200,
              left: 40,
              right: 40,
              child: SizedBox(
                height: 500,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(4, 4, 4, 0.158),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(24),
                  child: Column(
                    children: [
                      // Custom TabBar
                      TabBar(
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey,
                        indicatorColor: Color.fromRGBO(255, 0, 54, 1),
                        indicatorWeight: 3,
                        tabs: [Tab(text: "Log in"), Tab(text: "Sign in")],
                      ),
                      SizedBox(height: 20),

                      // Expanded TabBarView
                      Expanded(
                        child: TabBarView(
                          children: [
                            // Tab 1: Log in
                            Column(
                              children: [
                                TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color.fromRGBO(168, 167, 167, 1),
                                      ),
                                    ),
                                    hintText: 'Enter email or username',
                                    hintStyle: TextStyle(
                                      color: Color.fromRGBO(168, 167, 167, 1),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 30),
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    hintStyle: TextStyle(
                                      color: Color.fromRGBO(168, 167, 167, 1),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 30),
                                SizedBox(
                                  height: 44,
                                  width: 258,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color.fromRGBO(
                                        255,
                                        0,
                                        54,
                                        1,
                                      ),
                                      foregroundColor: Colors.white,
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => FoodScreen(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      "Log In",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  heightFactor: 2,
                                  child: Text(
                                    "Forgot Password?",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color.fromRGBO(168, 167, 167, 1),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  heightFactor: 3,
                                  child: Text(
                                    "OR",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(168, 167, 167, 1),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    35,
                                    0,
                                    35,
                                    10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset("assets/images/face.png"),
                                      Image.asset("assets/images/x.png"),
                                      Image.asset("assets/images/google.png"),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            // Tab 2
                            Column(
                              children: [
                                TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color.fromRGBO(168, 167, 167, 1),
                                      ),
                                    ),
                                    hintText: 'Enter email or username',
                                    hintStyle: TextStyle(
                                      color: Color.fromRGBO(168, 167, 167, 1),
                                    ),
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color.fromRGBO(168, 167, 167, 1),
                                      ),
                                    ),
                                    hintText: 'Password',
                                    hintStyle: TextStyle(
                                      color: Color.fromRGBO(168, 167, 167, 1),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color.fromRGBO(168, 167, 167, 1),
                                      ),
                                    ),
                                    hintText: 'confirm Password',
                                    hintStyle: TextStyle(
                                      color: Color.fromRGBO(168, 167, 167, 1),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 30),
                                SizedBox(
                                  height: 44,
                                  width: 258,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color.fromRGBO(
                                        255,
                                        0,
                                        54,
                                        1,
                                      ),
                                      foregroundColor: Colors.white,
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => FoodScreen(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      "Sign Up",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  heightFactor: 3,
                                  child: Text(
                                    "OR",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(168, 167, 167, 1),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    35,
                                    0,
                                    35,
                                    10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset("assets/images/face.png"),
                                      Image.asset("assets/images/x.png"),
                                      Image.asset("assets/images/google.png"),
                                    ],
                                  ),
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
          ],
        ),
      ),
    );
  }
}
