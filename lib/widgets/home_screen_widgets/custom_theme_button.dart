import 'package:flutter/material.dart';
import 'package:foodora/extensions/screen_size/screen_size.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomThemeButton extends StatelessWidget {
  const CustomThemeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return                   TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Container(
                      alignment: Alignment.center,
                      width: context.getWidth() * 0.8,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(255, 0, 54, 0.24),
                            blurRadius: 7.5,
                            offset: Offset(0, 8),
                          ),
                        ],
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(255, 0, 54, 1),
                            Color.fromRGBO(255, 103, 135, 1),
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        ),
                      ),
                      child: Text(
                        'Close',
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
  }
}