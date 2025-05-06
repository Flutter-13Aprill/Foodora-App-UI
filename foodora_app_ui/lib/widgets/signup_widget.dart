import 'package:flutter/material.dart';
import 'package:foodora_app_ui/screens/home_screen.dart';
import 'package:foodora_app_ui/widgets/socail_widget.dart';

class SignupWidget extends StatelessWidget {
  const SignupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(168, 167, 167, 1)),
            ),
            hintText: "Enter email or username",
            hintStyle: TextStyle(color: Color.fromRGBO(168, 167, 167, 1)),
          ),
        ),
        SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(168, 167, 167, 1)),
            ),
            hintText: "Password",
            hintStyle: TextStyle(color: Color.fromRGBO(168, 167, 167, 1)),
          ),
        ),
        SizedBox(height: 20),

        TextField(
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(168, 167, 167, 1)),
            ),
            hintText: "confirm Password",
            hintStyle: TextStyle(color: Color.fromRGBO(168, 167, 167, 1)),
          ),
        ),
        Container(
          width: 258,
          height: 44,
          margin: EdgeInsets.only(top: 35, bottom: 27),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              backgroundColor: Color.fromRGBO(255, 0, 54, 1),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            child: Text(
              "sign up",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ),
        SocailWidget(hightOr: 8),
      ],
    );
  }
}
