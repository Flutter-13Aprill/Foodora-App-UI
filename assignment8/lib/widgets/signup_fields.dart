import 'package:assignment8/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  //here where the text field for sign up
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 35),

          //email text field
          TextField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: const Color.fromARGB(255, 234, 234, 245),
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: const Color.fromARGB(255, 234, 234, 245),
                ),
              ),
              hintText: 'Enter email or username',
              hintStyle: TextStyle(
                fontSize: 12,
                color: const Color.fromARGB(255, 168, 167, 167),
              ),
            ),
          ),
          //password text field
          TextField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: const Color.fromARGB(255, 234, 234, 245),
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: const Color.fromARGB(255, 234, 234, 245),
                ),
              ),
              hintText: 'Password',
              hintStyle: TextStyle(
                fontSize: 12,
                color: const Color.fromARGB(255, 168, 167, 167),
              ),
            ),
          ),

          //confirm password text field
          TextField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: const Color.fromARGB(255, 234, 234, 245),
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: const Color.fromARGB(255, 234, 234, 245),
                ),
              ),
              hintText: 'Confirm Password',
              hintStyle: TextStyle(
                fontSize: 12,
                color: const Color.fromARGB(255, 168, 167, 167),
              ),
            ),
          ),
          SizedBox(height: 40),
          //signup button
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
                  MaterialPageRoute(builder: (context) => DashboardScreen()),
                );
              },

              child: Text(
                'SignUp',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
