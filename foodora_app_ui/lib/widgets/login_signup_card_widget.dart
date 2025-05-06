import 'package:flutter/material.dart';
import 'package:foodora_app_ui/widgets/Login_widget.dart';
import 'package:foodora_app_ui/widgets/signup_widget.dart';

class LoginSignupCardWidget extends StatelessWidget {
  const LoginSignupCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 350,
            height: 35,
            // width: 258,
            margin: EdgeInsets.only(top: 35),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              
              border: Border.all(
                width: 1,
                color: Color.fromRGBO(234, 234, 234, 1),
              ),
            ),
            child: TabBar(
              indicatorColor: Colors.transparent,

              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                color: Color.fromRGBO(255, 0, 54, 1),
                borderRadius: BorderRadius.circular(50),
              ),
              labelColor: Colors.white,

              tabs: [
                Tab(child: Center(child: Text('Log In'))),
                Tab(child: Center(child: Text('Sign Up'))),
              ],
            ),
          ),

          Expanded(
            child: TabBarView(
              children: [
                Center(child: LoginWidget()),
                Center(child: SignupWidget()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
