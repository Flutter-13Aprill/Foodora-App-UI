import 'package:flutter/material.dart';

// -- Extension
import 'package:foodora/extensions/screen_size/screen_size.dart';

// -- External Package
import 'package:google_fonts/google_fonts.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Container(
                width: context.getWidth(),
                height: context.getHeight() * 0.2,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                    Color.fromRGBO(255, 0, 54, 1),
                    Color.fromRGBO(255, 103, 135, 1),
                  ],
                  )
                ),
                child: DrawerHeader(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Foodora',
                      style: GoogleFonts.poppins(
                        fontSize: 32,
                        color: Colors.white
                      ),
                      ),
                  )
                ),
              ),
            
            ListTile(leading: Icon(Icons.person), title: Text('Profile')),
            ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
            ListTile(leading: Icon(Icons.mark_as_unread_rounded), title: Text('Contact Us')),
          ],
        );
  }
}