import 'package:flutter/material.dart';

// -- Screen
import 'package:foodora/screens/home_screen.dart';

// -- Widgets
import 'package:foodora/widgets/authentication_screen_widgets/login_widget.dart';
import 'package:foodora/widgets/authentication_screen_widgets/sign_up_widget.dart';
import 'package:foodora/widgets/authentication_screen_widgets/social_media_authentication.dart';

// -- Extension
import 'package:foodora/extensions/screen_size/screen_size.dart';

// -- External Packages
import 'package:google_fonts/google_fonts.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({super.key});

  @override
  State<StatefulWidget> createState() => _AuthenticationScreen();
}

class _AuthenticationScreen extends State<AuthenticationScreen> {


  @override
  Widget build(BuildContext context) {
    

    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(width: context.getWidth(), height: context.getHeight()),

            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                'assets/splash_Screen/splash_screen_images/foodora_login_image.webp',
                width: context.getWidth(),
              ),
            ),

            // Card
            Positioned(
              left: 25,
              right: 25,
              top: 260,
              child: Container(
                height: context.getHeight() * 0.593,
                width: context.getWidth() * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      blurRadius: 10,
                      spreadRadius: 5,
                      offset: Offset(0, 4)
                    )
                  ]
                ),
                child: Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Color(0xffEAEAEA), width: 1),
                        ),
                        child: TabBar(
                          labelColor: Colors.white,
                          dividerColor: Colors.transparent,
                          unselectedLabelColor: Color(0xffFF0036),
                          indicatorSize: TabBarIndicatorSize.tab,
                          labelStyle: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                          unselectedLabelStyle:GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),
                          
                          indicator: BoxDecoration(
                            color: Color(0xffFF0036),
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(255, 0, 54, 0.24),
                                blurRadius: 7
                              )
                            ]
                          ),
                          tabs: [
                            Tab(child: Text('Login')),
                            Tab(child: Text('Sign Up'),)
                        ]),
                      ),
                    ),

                    SizedBox(height: 8),

                    SizedBox(
                      height: context.getHeight() * 0.29,
                      width: context.getWidth(),
                      child: TabBarView(
                        children: [
                          LoginWidget(onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()))),
                          SignUpWidget(onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen())),),
                      ]
                      ),
                    ),

                    SizedBox(height: 32),

                    Text('OR', style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xffA8A7A7))),

                    SizedBox(height: 32,),

                    SocialMediaAuthentication(),

                    SizedBox(height: 32,)
                  ],
                ),
              ),
            ),

            Positioned(
              top: context.getHeight() * 0.833,
              left: context.getWidth() * 0.42,
              child: Image.asset('assets/authentication_screen/authentication_screen_images/Vegitables.png'),
            )
          ],
        ),
      ),
    );
  }
}
