import 'package:flutter/material.dart';
import 'package:foodora/Screens/dashboard_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
                hintText: "Enter email or username",
                hintStyle: TextStyle(
                    color: Color.fromARGB(255, 168, 167, 167), fontSize: 12),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 234, 234, 245),
                        strokeAlign: 29))),
          ),
          const SizedBox(
            height: 8,
          ),
          const TextField(
              decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(
                      color: Color.fromARGB(255, 168, 167, 167), fontSize: 12),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 234, 234, 245))))),
          const SizedBox(height: 32),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DashboardScreen()));
            },
            child: Container(
              width: 250,
              height: 40,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 0, 54),
                  borderRadius: BorderRadius.circular(22)),
              child: Center(
                  child: Text("Log In",
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.bold))),
            ),
          ),
          const SizedBox(height: 8),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "Forgot Password?",
              style: GoogleFonts.poppins(
                color: const Color.fromARGB(255, 168, 167, 167),
                fontSize: 10,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Center(
            child: Text(
              "OR",
              style: GoogleFonts.poppins(
                  color: const Color.fromARGB(255, 168, 167, 167)),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assests/icons/Facebook.png"),
              Image.asset("assests/icons/Twitter.png"),
              Image.asset("assests/icons/Google.png")
            ],
          )
        ],
      ),
    );
  }
}
