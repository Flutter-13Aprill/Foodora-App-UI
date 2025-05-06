import 'package:assignment8/widgets/login_fields.dart';
import 'package:assignment8/widgets/signup_fields.dart';
import 'package:flutter/material.dart';

class LoginTabBar extends StatefulWidget {
  const LoginTabBar({super.key});

//here where the login appbar is defiend it will take textfileds from login and signup
  @override
  State<LoginTabBar> createState() => _LoginTabBarState();
}

class _LoginTabBarState extends State<LoginTabBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: currentIndex,
      child: Scaffold(
        body: Container(
          child: Stack(
            children: [
              SizedBox(
                child: Image.asset(
                  'assets/project_images/foodora_login_image.png',
                ),
              ),
                  //the box in the middle of the screen

              Center(
                child: Container(
                  alignment: Alignment.center,
                  width: 310,
                  height: 475,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(50, 0, 0, 0),
                        blurRadius: 4,
                        offset: Offset(-0.5, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.black12, width: 1),
                          ),
                          width: 258,
                          height: 28,
                          //TabBar defintion
                          child: TabBar(
                            dividerColor: Colors.transparent,
                            labelPadding: EdgeInsets.symmetric(vertical: 1),
                            indicator: BoxDecoration(
                              color: Color.fromARGB(255, 255, 0, 54),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            labelColor: Colors.white,
                            unselectedLabelColor: const Color.fromARGB(
                              255,
                              255,
                              0,
                              54,
                            ),
                              //set the state to know in which tab the user are 
                            onTap: (value) {
                              currentIndex = value;
                              setState(() {});
                            },
                            tabs: [
                              Container(
                                alignment: Alignment.center,
                                width: 170,
                                height: 30,
                                child: Tab(text: 'Login'),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color:
                                  //check if it's in the page give it the red color
                                      currentIndex == 1
                                          ? const Color.fromARGB(
                                            255,
                                            255,
                                            0,
                                            54,
                                          )
                                          : Colors.white,
                                ),
                                alignment: Alignment.center,
                                width: 130,
                                height: 30,
                                child: Tab(text: 'Sign Up'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 250,
                        height: 265,
                        color: Colors.white,
                        child: TabBarView(
                          children: [LoginScreen(), SignupScreen()],
                        ),
                      ),

                      Container(
                        alignment: Alignment.center,
                        width: 275,
                        height: 25,
                        child: Text(
                          'OR',
                          style: TextStyle(
                            color: Color.fromARGB(255, 168, 167, 167),
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        alignment: Alignment.center,
                        width: 275,
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          //social media images
                          child: Row(
                            spacing: 32,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/project_icons/facebook_icon.png',
                              ),
                              Image.asset(
                                'assets/project_icons/twitter_icon.png',
                              ),
                              Image.asset(
                                'assets/project_icons/google_icon.png',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  'assets/project_images/cutted_veggies_image.png',width: 300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
