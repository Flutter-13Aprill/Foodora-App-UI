import 'package:flutter/material.dart';
import 'package:may3rd/Screens/home_screen.dart';

class LoginTab extends StatelessWidget {
  const LoginTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter email or username',
              hintStyle: TextStyle(
                color: Color.fromRGBO(168, 167, 167, 1),
                fontSize: 14,
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Color.fromRGBO(234, 234, 245, 1),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              hintStyle: TextStyle(
                color: Color.fromRGBO(168, 167, 167, 1),
                fontSize: 14,
              ),
              hintText: 'Password',
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Color.fromRGBO(234, 234, 245, 1),
                ),
              ),
            ),
            obscureText: true,
          ),
          const SizedBox(height: 40),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.height * 0.05,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(
                  Color.fromRGBO(255, 0, 54, 1),
                ),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text('Login', style: TextStyle(color: Colors.white)),
            ),
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Forgot Password?",
                style: TextStyle(color: Color.fromRGBO(168, 167, 167, 1)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
