import 'package:flutter/material.dart';
import 'package:foodora_app_ui/Extensions_screen/screen_size.dart';
import 'package:foodora_app_ui/dashboard_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Stack(
          children: [
            // الخلفية الأساسية
            Positioned.fill(
              child: Image.asset('assets/images/g60.png', fit: BoxFit.cover),
            ),
            // القناع الأبيض الشفاف
            Positioned.fill(
              child: Opacity(
                opacity: 0.3,
                child: Image.asset('assets/images/Mask.png', fit: BoxFit.cover),
              ),
            ),
            // اللوجو والنص
            Positioned(
              top: context.getheight() * 0.15,
              left: context.getwidth() * 0.30,
              child: Row(
                children: [
                  Image.asset('assets/images/Cloche.png'),
                  Text(
                    ' foodora',
                    style: TextStyle(
                      fontSize: ((context.getheight() * context.getwidth() / 1000) * 0.10),
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            // الفورم
            Positioned(
              top: context.getheight() * 0.24,
              left: context.getwidth() * 0.07,
              right: context.getwidth() * 0.07,
              child: Container(
             
                padding: EdgeInsets.symmetric(vertical: context.getheight() * 0.03),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(41),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // TabBar
                     Container(
                         clipBehavior: Clip.none,
   width: 200,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(90),
    border: Border.all(color: Colors.grey),
  ),
  child: TabBar(
    dividerColor: Colors.transparent,
    indicator: BoxDecoration(
      color: Color.fromARGB(255, 255, 0, 54),
      borderRadius: BorderRadius.circular(10),
    ),
    labelColor: Colors.white,
    unselectedLabelColor: Colors.black,
    tabs: [
      Tab(
        height: 30,
        child: Container(
          width: 800,
            clipBehavior: Clip.none,
          child: Center(child: Text('Log in')),
        ),
      ),
      Tab(  height: 30,
        child: Container(
          clipBehavior: Clip.none,
          child: Center(child: Text('Sign Up')),
        ),
      ),
    ],
  ),
),
                      SizedBox(height: context.getheight() * 0.03),
                      // Tab Views
                      SizedBox(
                        height: context.getheight() * 0.48,
                        child: TabBarView(
                          children: [
                            // Log in
                            _buildLoginTab(context),
                            // Sign up
                            _buildSignUpTab(context),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoginTab(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.getwidth() * 0.11),
      child: Column(
        children: [
          _inputField('Enter email or username'),
          _inputField('Password', isPassword: true),
          _mainButton(context, 'Log In'),
          Align(
            alignment: Alignment.centerRight,
            child: Text('Forget Password?', style: TextStyle(color: Colors.grey)),
          ),
          _orDivider(context),
          _socialIcons(context),
        ],
      ),
    );
  }

  Widget _buildSignUpTab(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.getwidth() * 0.11),
      child: Column(
        children: [
          _inputField('Enter email or username'),
          _inputField('Password', isPassword: true),
          _inputField('Confirm Password', isPassword: true),
          _mainButton(context, 'Sign Up'),
          _orDivider(context),
          _socialIcons(context),
        ],
      ),
    );
  }

  Widget _inputField(String hint, {bool isPassword = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey),
          border: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFFEAEAF5))),
          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFFEAEAF5))),
          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFFEAEAF5), width: 2.0)),
        ),
      ),
    );
  }

  Widget _mainButton(BuildContext context, String label) {
    return Builder(
      builder: (context) => GestureDetector(
        onTap: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DashBoard()));
        },
        child: Container(
          height: context.getheight() * 0.05,
          width: context.getwidth() * 0.79,
          margin: const EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(context.getwidth() * 0.04),
            color: const Color.fromARGB(255, 255, 0, 54),
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Widget _orDivider(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Center(child: Text('OR', style: TextStyle(color: Colors.grey))),
    );
  }

  Widget _socialIcons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/facebook.png'),
        SizedBox(width: context.getwidth() * 0.06),
        Image.asset('assets/images/x.png'),
        SizedBox(width: context.getwidth() * 0.06),
        Image.asset('assets/images/google.png'),
      ],
    );
  }
}
