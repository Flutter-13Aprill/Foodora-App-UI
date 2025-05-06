import 'package:flutter/material.dart';


import 'package:google_fonts/google_fonts.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({super.key, required this.onTap});

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 24),

        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter email or username',
                hintStyle: GoogleFonts.poppins(
                  color: Color(0xffA8A7A7),
                  fontSize: 12,
                  fontWeight: FontWeight.w400
                )
              ),
            ),

            SizedBox(height: 24,),
      
           TextField(
             obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: GoogleFonts.poppins(
                  color: Color(0xffA8A7A7),
                  fontSize: 12,
                  fontWeight: FontWeight.w400
                )
              ),
            ),
            
            SizedBox(height: 24,),

            TextButton(
              onPressed: onTap, 
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 24),
                width: double.infinity,
                height: 44,
                decoration: BoxDecoration(
                  color: Color(0xffFF0036),
                  borderRadius: BorderRadius.circular(24)
                ),
                child: Text(
                  'Login', 
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                  )
                  ),
            )
            ),

            SizedBox(height: 16),
            
            Align(
              alignment: Alignment(0.7,0),
              child: Text('Forgot Password?', style: GoogleFonts.poppins(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: Color(0xffA8A7A7)
              )),
            )
          ],
        ),
      );
  }
}