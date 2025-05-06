import 'package:flutter/material.dart';
import 'package:foodora/screens/home_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
              top: 0,
              child: Image.asset('assets/image.png', width: 420),
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Container(
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),

                  child: Column(
                    children: [
                      SizedBox(height: 35),
                      Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          border: Border.all(
                            color: const Color.fromARGB(255, 233, 233, 233),
                          ),
                        ),
                        child: TabBar(
                          indicatorSize: TabBarIndicatorSize.tab,
                          dividerHeight: 0,
                          indicator: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(32),
                          ),
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.red,
                          tabs: [Tab(text: "Log In"), Tab(text: "Sign Up")],
                        ),
                      ),
                      SizedBox(
                        height: 420,
                        // color: Colors.blueAccent,
                        child: TabBarView(
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(24.0),
                                child: Column(
                                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                  children: [
                                    textFieldDesign('enter email or username', context),
                                    textFieldDesign('Password', context),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>  HomeScreen()),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.red,
                                        minimumSize: Size(300, 50)
                                      ),
                                      child: Text(
                                        'Log In',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [Text('Forgot Password?', style: TextStyle(color: const Color.fromARGB(255, 181, 181, 181)),)],),
                                    Text('OR', style: TextStyle(color: const Color.fromARGB(255, 176, 176, 176), fontSize: 16),),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                                      Image.asset('assets/facebook.png'),
                                      Image.asset('assets/twetter.png'),
                                      Image.asset('assets/google.png'),
                                    ],)
                                  ],
                                ),
                              ),
                            ),
                            Center(child: Padding(
                                padding: const EdgeInsets.all(24.0),
                                child: Column(
                                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                  children: [
                                    textFieldDesign('Enter email or username', context),
                                    textFieldDesign('Password', context),
                                    textFieldDesign('confirm Password', context),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>  HomeScreen()),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.red,
                                        minimumSize: Size(300, 50)
                                      ),
                                      child: Text(
                                        'sign up',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text('OR', style: TextStyle(color: const Color.fromARGB(255, 176, 176, 176), fontSize: 16),),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                                      Image.asset('assets/facebook.png'),
                                      Image.asset('assets/twetter.png'),
                                      Image.asset('assets/google.png'),
                                    ],)
                                  ],
                                ),
                              ),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Positioned(
              bottom: -35,
              right: -50,
              child: Image.asset('assets/Vegitables.png', width: 300),
            ),
          ],
        ),
      ),
    );
  }
}

Widget textFieldDesign(String label, BuildContext context) { // this will be like a function to design all text field (less thsn 100 line )
  return Container(
    width: MediaQuery.of(context).size.width * 0.7,
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: const Color.fromARGB(104, 208, 208, 208), // Border color
          width: 0.5, // Border thickness
        ),
      ),
    ),
    child: TextField(
      decoration: InputDecoration(
        hintText: label,
        hintStyle: TextStyle(
          color: const Color.fromARGB(255, 206, 206, 206),
          fontSize: 16,
        ),
      ),
    ),
  );
}
