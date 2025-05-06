import 'package:assignment8/screen/dashboard_screen.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: setUserForm());
  }

  Widget setUserForm() {
    return DefaultTabController(
      length: 2,

      // initialIndex: 0,
      child: Stack(
        children: <Widget>[
          Container(
            color: Colors.white,

            child: Stack(
              children: [
                Positioned(
                  bottom: -35,
                  right: -138,
                  child: SizedBox(
                    height: 230,
                    width: 397,
                    child: Image.asset("assets/images/image1.png"),
                  ),
                ),
              ],
            ),
          ),

          Stack(
            children: [
              Image(
                image: AssetImage("assets/images/image3.png"),
                fit: BoxFit.cover,

                width: MediaQuery.of(context).size.width,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 108.0, top: 100),
                child: Image.asset(
                  "assets/images/logo.png",
                  height: 25,
                  width: 140,
                ),
              ),
            ],
          ),
          //-------------------------------
          Container(
            decoration: BoxDecoration(),
            child: Card(
              shadowColor: Colors.black, // elevation: 20.0,
              margin: EdgeInsets.only(
                left: 40.0,
                right: 30.0,
                top: 210,
                bottom: 200,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(30.0)),
              ),

              color: Colors.white,

              child: Column(
                children: [
                  SizedBox(height: 20),
                  /////////////username textfeild
                  ///
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(15.0),
                        width: 300,
                        height: 45,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),

                          border: Border.all(color: Colors.grey),
                        ),

                        child: TabBar(
                          indicatorSize: TabBarIndicatorSize.label,
                          unselectedLabelColor: Colors.black,

                          labelStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Colors.white,
                          ),

                          dividerHeight: 0,

                          indicator: BoxDecoration(
                            color: Color.fromARGB(255, 255, 0, 54),

                            borderRadius: BorderRadius.circular(50),
                          ),
                          tabs: [
                            SizedBox(
                              width: 250,
                              height: 35,

                              child: Tab(text: "Log in"),
                            ),
                            SizedBox(
                              width: 250,
                              height: 35,

                              child: Tab(text: "Sign up"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                width: 300,
                                height: 60,
                                child: TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: const Color.fromARGB(
                                          255,
                                          234,
                                          234,
                                          245,
                                        ),
                                      ),
                                    ),
                                    fillColor: Colors.white,

                                    filled: true, //to put a background color

                                    hintText: "Enter email or username",
                                    hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 168, 167, 167),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                width: 300,
                                height: 60,
                                child: TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: const Color.fromARGB(
                                          255,
                                          234,
                                          234,
                                          245,
                                        ),
                                      ),
                                    ),
                                    fillColor: Colors.white,
                                    filled: true, //to put a background color
                                    hintText: "Password",
                                    hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 168, 167, 167),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(height: 20),
                            SizedBox(
                              width: 258,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color.fromARGB(
                                    255,
                                    255,
                                    0,
                                    54,
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {});
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DashboardScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Log in",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            Padding(
                              //to adjust the text spaces
                              padding: const EdgeInsets.only(
                                right: 25.0,
                                // bottom: 100,
                              ),
                              child: Align(
                                alignment:
                                    Alignment
                                        .bottomRight, //to adjust the text place
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 168, 167, 167),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            Center(
                              child: Text(
                                "OR",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 168, 167, 167),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            SizedBox(height: 25),

                            Padding(
                              padding: EdgeInsets.only(left: 70),
                              child: Row(
                                children: [
                                  Image.asset("assets/images/image5.png"),
                                  SizedBox(width: 25),
                                  Image.asset("assets/images/image4.png"),
                                  SizedBox(width: 25),
                                  Image.asset("assets/images/image6.png"),
                                ],
                              ),
                            ),
                          ],
                        ),

                        //tab bar2 signup
                        Column(
                          children: [
                            Container(
                              child: Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  width: 300,
                                  height: 60,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: const Color.fromARGB(
                                            255,
                                            234,
                                            234,
                                            245,
                                          ),
                                        ),
                                      ),
                                      fillColor: Colors.white,
                                      filled: true, //to put a background color
                                      hintText: "Enter email or username",
                                      hintStyle: TextStyle(
                                        color: Color.fromARGB(
                                          255,
                                          168,
                                          167,
                                          167,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                width: 300,
                                height: 60,
                                child: TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: const Color.fromARGB(
                                          255,
                                          234,
                                          234,
                                          245,
                                        ),
                                      ),
                                    ),
                                    fillColor: Colors.white,
                                    filled: true, //to put a background color
                                    hintText: "Password",
                                    hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 168, 167, 167),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                width: 300,
                                height: 60,
                                child: TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: const Color.fromARGB(
                                          255,
                                          234,
                                          234,
                                          245,
                                        ),
                                      ),
                                    ),
                                    fillColor: Colors.white,
                                    filled: true, //to put a background color
                                    hintText: "Confirm Password",
                                    hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 168, 167, 167),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            SizedBox(
                              width: 258,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color.fromARGB(
                                    255,
                                    255,
                                    0,
                                    54,
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {});
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DashboardScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Sign up",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15),

                            // SizedBox(height: 30),
                            Center(
                              child: Text(
                                "OR",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 168, 167, 167),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            SizedBox(height: 25),

                            Padding(
                              padding: EdgeInsets.only(left: 70),
                              child: Row(
                                children: [
                                  Image.asset("assets/images/image5.png"),
                                  SizedBox(width: 25),
                                  Image.asset("assets/images/image4.png"),
                                  SizedBox(width: 25),
                                  Image.asset("assets/images/image6.png"),
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

          // Positioned to take only AppBar size
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: AppBar(backgroundColor: Colors.transparent),
          ),
        ],
      ),
    );
  }
}
