import 'package:flutter/material.dart';
import 'package:foodora/screens/dashboard_screen.dart';

class TapbarWidget extends StatefulWidget {
  const TapbarWidget({super.key});

  @override
  State<TapbarWidget> createState() => _TapbarWidgetState();
}

class _TapbarWidgetState extends State<TapbarWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 230),
      child: Center(
        child: Container(//the contaner take all the abb bar 
          height: 560,
          width: 350,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 253, 253),
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 4,
                blurRadius: 3,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: DefaultTabController(
            length: 2,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
              child: Column(
                children: [
                  Container(//small contaner to take tab bar 
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey),
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: TabBar(
                      labelPadding: EdgeInsets.zero,
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.pink[300],
                      indicator: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                      tabs: [
                        Tab(
                          child: Container(
                            width: 145,
                            alignment: Alignment.center,
                            child: Text('Log in'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            width: 145,
                            alignment: Alignment.center,
                            child: Text('Sign Up'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),

                  Expanded(
                    child: TabBarView(
                      children: [
                        Column(//log in 
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                hintText: "Enter email or username",
                              ),
                            ),

                            SizedBox(height: 30),

                            TextField(
                              decoration: InputDecoration(hintText: "Password"),
                            ),
                            SizedBox(height: 40),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  201,
                                  24,
                                  83,
                                ),
                                minimumSize: Size(280, 50),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DashboardScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                "Log in ",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            SizedBox(height: 13),
                            Container(
                              alignment: Alignment.bottomRight,
                              child: TextButton(
                                onPressed: () {},
                                child: Text("Forgot Password?"),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text('OR'),
                            SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color.fromARGB(
                                        92,
                                        158,
                                        158,
                                        158,
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                    color: const Color.fromARGB(
                                      255,
                                      255,
                                      255,
                                      255,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color.fromARGB(
                                          145,
                                          224,
                                          223,
                                          223,
                                        ).withOpacity(0.5),
                                        spreadRadius: 0,
                                        blurRadius: 1,
                                        offset: Offset(0, 4),
                                      ),
                                    ],
                                  ),

                                  child: Image.asset('images/facebook.png'),
                                ),
                                SizedBox(width: 25),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color.fromARGB(
                                        92,
                                        158,
                                        158,
                                        158,
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                    color: const Color.fromARGB(
                                      255,
                                      255,
                                      255,
                                      255,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color.fromARGB(
                                          145,
                                          224,
                                          223,
                                          223,
                                        ).withOpacity(0.5),
                                        spreadRadius: 0,
                                        blurRadius: 1,
                                        offset: Offset(0, 4),
                                      ),
                                    ],
                                  ),

                                  child: Image.asset('images/twitter.png'),
                                ),
                                SizedBox(width: 25),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: const Color.fromARGB(
                                      255,
                                      255,
                                      255,
                                      255,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color.fromARGB(
                                          145,
                                          224,
                                          223,
                                          223,
                                        ).withOpacity(0.5),
                                        spreadRadius: 0,
                                        blurRadius: 1,
                                        offset: Offset(0, 4),
                                      ),
                                    ],
                                  ),

                                  child: Image.asset('images/google.png'),
                                ),
                              ],
                            ),
                          ],
                        ),

                        ///sign up
                        Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                hintText: "Enter email or username",
                              ),
                            ),
                            SizedBox(height: 30),
                            TextField(
                              decoration: InputDecoration(hintText: "Password"),
                            ),
                            SizedBox(height: 30),
                            TextField(
                              decoration: InputDecoration(
                                hintText: "confirm Password",
                              ),
                            ),
                            SizedBox(height: 30),

                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DashboardScreen(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.pink,
                                minimumSize: Size(280, 50),
                              ),
                              child: Text(
                                "Sign Up",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            SizedBox(height: 20),
                            Text('OR'),
                            SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                          92,
                                          158,
                                          158,
                                          158,
                                        ),
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                      color: const Color.fromARGB(
                                        255,
                                        255,
                                        255,
                                        255,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color.fromARGB(
                                            145,
                                            224,
                                            223,
                                            223,
                                          ).withOpacity(0.5),
                                          spreadRadius: 0,
                                          blurRadius: 1,
                                          offset: Offset(0, 4),
                                        ),
                                      ],
                                    ),

                                    child: Image.asset('images/facebook.png'),
                                  ),
                                ),
                                SizedBox(width: 25),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                          92,
                                          158,
                                          158,
                                          158,
                                        ),
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                      color: const Color.fromARGB(
                                        255,
                                        255,
                                        255,
                                        255,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color.fromARGB(
                                            145,
                                            224,
                                            223,
                                            223,
                                          ).withOpacity(0.5),
                                          spreadRadius: 0,
                                          blurRadius: 1,
                                          offset: Offset(0, 4),
                                        ),
                                      ],
                                    ),

                                    child: Image.asset('images/twitter.png'),
                                  ),
                                ),
                                SizedBox(width: 25),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: const Color.fromARGB(
                                        255,
                                        255,
                                        255,
                                        255,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color.fromARGB(
                                            145,
                                            224,
                                            223,
                                            223,
                                          ).withOpacity(0.5),
                                          spreadRadius: 0,
                                          blurRadius: 1,
                                          offset: Offset(0, 4),
                                        ),
                                      ],
                                    ),

                                    child: Image.asset('images/google.png'),
                                  ),
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
      ),
    );
  }
}
