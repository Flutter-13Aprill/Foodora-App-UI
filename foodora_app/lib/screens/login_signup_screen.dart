import 'package:flutter/material.dart';
import 'package:foodora_app/screens/home_screen.dart';

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({super.key});

  @override
  State<LoginSignupScreen> createState() => _LoginSignupScreenState();
}
// This is the Login/Signup screen. It allows users to switch between the login and signup forms using a TabBar and TabController.
// We use a TabController to manage the tab switching, and TextEditingController for handling text input fields.
// Additionally, after successful login or signup, we navigate to the HomeScreen and pass the user's username as an argument to the HomeScreen.

class _LoginSignupScreenState extends State<LoginSignupScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  final fieldController = TextEditingController();

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset("assets/images/header-image.png"),
          ),
          Center(
            child: Container(
              height: 450,
              width: 320,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),

                boxShadow: [
                  BoxShadow(
                    color: Color(0xffEAEAF5),
                    offset: Offset(0, 4),
                    blurRadius: 10,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Container(
                      height: 35,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffEAEAEA), width: 1),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TabBar(
                        controller: tabController,
                        labelColor: Colors.white,
                        unselectedLabelColor: Color(0xffFF0036),
                        indicator: BoxDecoration(
                          color: Color(0xffFF0036),
                          borderRadius: BorderRadius.circular(25),
                        ),

                        tabs: [Tab(text: "Log in"), Tab(text: "Sign up")],
                      ),
                    ),

                    Expanded(
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Column(
                              children: [
                                TextField(
                                  controller: fieldController,
                                  decoration: InputDecoration(
                                    hintText: "Enter email or username",
                                    hintStyle: TextStyle(
                                      color: Color(0xffA8A7A7),
                                      fontSize: 12,
                                    ),

                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffEAEAF5),
                                      ),
                                    ),
                                  ),
                                ),

                                TextField(
                                  decoration: InputDecoration(
                                    hintText: "Password",
                                    hintStyle: TextStyle(
                                      color: Color(0xffA8A7A7),
                                      fontSize: 12,
                                    ),

                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffEAEAF5),
                                      ),
                                    ),
                                  ),
                                  obscureText: true,
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 40,
                                    bottom: 24,
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => HomeScreen(),
                                          settings: RouteSettings(
                                            arguments: fieldController.text,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 44,
                                      width: 258,
                                      decoration: BoxDecoration(
                                        color: Color(0xffFF0036),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Text(
                                        "Log In",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "Forgot Password?",
                                    style: TextStyle(
                                      color: Color(0xffA8A7A7),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  "OR",
                                  style: TextStyle(
                                    color: Color(0xffA8A7A7),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 30),

                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Color(0xffEEEEF6),
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          "assets/icons/facebook-icon.png",
                                        ),
                                      ),
                                    ),

                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Color(0xffEEEEF6),
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          "assets/icons/twitter-icon.png",
                                        ),
                                      ),
                                    ),

                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          "assets/icons/google-icon.png",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Column(
                              children: [
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: "Enter email or username",
                                    hintStyle: TextStyle(
                                      color: Color(0xffA8A7A7),
                                      fontSize: 12,
                                    ),

                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffEAEAF5),
                                      ),
                                    ),
                                  ),
                                ),

                                TextField(
                                  decoration: InputDecoration(
                                    hintText: "Password",
                                    hintStyle: TextStyle(
                                      color: Color(0xffA8A7A7),
                                      fontSize: 12,
                                    ),

                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffEAEAF5),
                                      ),
                                    ),
                                  ),
                                  obscureText: true,
                                ),

                                TextField(
                                  decoration: InputDecoration(
                                    hintText: "confirm Password",
                                    hintStyle: TextStyle(
                                      color: Color(0xffA8A7A7),
                                      fontSize: 12,
                                    ),

                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffEAEAF5),
                                      ),
                                    ),
                                  ),
                                  obscureText: true,
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 40),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => HomeScreen(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 44,
                                      width: 258,
                                      decoration: BoxDecoration(
                                        color: Color(0xffFF0036),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Text(
                                        "Sign up",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                SizedBox(height: 18),
                                Text(
                                  "OR",
                                  style: TextStyle(
                                    color: Color(0xffA8A7A7),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 25),

                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Color(0xffEEEEF6),
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          "assets/icons/facebook-icon.png",
                                        ),
                                      ),
                                    ),

                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Color(0xffEEEEF6),
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          "assets/icons/twitter-icon.png",
                                        ),
                                      ),
                                    ),

                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          "assets/icons/google-icon.png",
                                        ),
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
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -90,
            right: -50,
            child: Image.asset(
              "assets/images/vegitables-image.png",
              width: 300,
              height: 300,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
