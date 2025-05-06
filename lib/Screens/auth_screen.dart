import 'package:flutter/material.dart';
import 'package:may3rd/CustomWidgets/AuthScreen/login_tab.dart';
import 'package:may3rd/CustomWidgets/AuthScreen/sign_up_tab.dart';
import 'package:may3rd/CustomWidgets/AuthScreen/social_icons.dart';
import 'package:may3rd/data/screen_size.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> with TickerProviderStateMixin {
  late final TabController _tabController = TabController(
    length: 2,
    vsync: this,
  );

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset('assets/images/circle.png', fit: BoxFit.cover),
          Positioned(
            top: -context.screenHeight * 0.7,
            left: 0,
            right: context.screenWidth * 0.2,
            bottom: 0,
            child: Image.asset(
              'assets/images/logo.png',
              height: context.screenHeight * 0.01,
              width: context.screenWidth * 0.014,
              fit: BoxFit.scaleDown,
            ),
          ),
          Positioned(
            top: context.screenHeight * 0.72,
            width: context.screenWidth,
            child: Image.asset('assets/images/vegitables.png'),
          ),
          Center(
            child: Container(
              height: context.screenHeight * 0.52,
              width: context.screenWidth * 0.79,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 16),
                    SizedBox(
                      width: context.screenWidth * 0.66,
                      height: context.screenHeight * 0.04,

                      child: TabBar(
                        automaticIndicatorColorAdjustment: true,

                        controller: _tabController,
                        labelColor: Colors.white,
                        unselectedLabelColor: Color.fromRGBO(255, 0, 54, 1),
                        labelPadding: EdgeInsets.symmetric(horizontal: 0),
                        indicator: BoxDecoration(
                          color: Color.fromRGBO(255, 0, 54, 1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        tabs: [
                          Container(
                            alignment: Alignment.center,
                            child: Text("Login", style: TextStyle()),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text("SignUp", style: TextStyle()),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: context.screenHeight * 0.29,
                      width: context.screenWidth * 0.7,
                      child: TabBarView(
                        controller: _tabController,
                        children: [LoginTab(), SignUpTab()],
                      ),
                    ),
                    Text(
                      'Or',
                      style: TextStyle(color: Color.fromRGBO(168, 167, 167, 1)),
                    ),
                    SocialIcons(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
