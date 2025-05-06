import 'package:assignment8/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

//here is the widget for the textfield for the login

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [SizedBox(height: 35,),
        //email field
          TextField(
            decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: const Color.fromARGB(255, 234, 234, 245)),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: const Color.fromARGB(255, 234, 234, 245)),
              ),
              hintText: 'Enter email or username',
              hintStyle: TextStyle(fontSize: 12,
                color: const Color.fromARGB(255, 168, 167, 167),
              ),
            ),
          ),
          //password field
          TextField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: const Color.fromARGB(255, 234, 234, 245)),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: const Color.fromARGB(255, 234, 234, 245)),
              ),
              hintText: 'Password',
              hintStyle: TextStyle(fontSize: 12,
                color: const Color.fromARGB(255, 168, 167, 167),
              ),
            ),
          ),
          //login button
          SizedBox(height: 40,),
           SizedBox(
                        width: 258,
                        height: 44,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 255, 0, 54),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DashboardScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'Log In',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      //forgot password text
                      SizedBox(height: 15),
                      Container(
                        alignment: Alignment.centerRight,
                        width: 275,
                        height: 20,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Color.fromARGB(255, 168, 167, 167),
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
          
        ],
      ),
    );
  }
}
