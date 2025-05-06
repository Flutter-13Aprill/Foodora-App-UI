import 'package:flutter/material.dart';
import 'package:foodora/screens/dashboard.dart';

class LoginSignUpScreen extends StatelessWidget {
  const LoginSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Stack(
          children: [
            //  Top image
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(60),
              ),
              child: Image.asset(
                'assets/Images/foodora_login_image.png',
                width: double.infinity,
                height: 380,
                fit: BoxFit.cover,
              ),
            ),

            //  White card and tabs
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 310,
                height: 470,
                margin: const EdgeInsets.only(top: 75),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      //  TabBar
                      Container(
                        width: 258,
                        height: 44,
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: const Color(0xFFEAEAEA),
                          ),
                        ),
                        child: TabBar(
                          indicator: BoxDecoration(
                            color: const Color(0xFFFF0036),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          indicatorSize: TabBarIndicatorSize.tab,
                          labelColor: Colors.white,
                          unselectedLabelColor: const Color(0xFFFF0036),
                          tabs: const [
                            Tab(text: 'Log In'),
                            Tab(text: 'Sign Up'),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Tab views
                      Expanded(
                        child: TabBarView(
                          children: [
                            _buildLoginForm(context),
                            _buildSignUpForm(context),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Bottom vegetable image
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                'assets/Images/Vegitables.png',
                width: 300,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Login form UI
  static Widget _buildLoginForm(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const TextField(
            decoration: InputDecoration(
              hintText: 'Enter email or username',
              border: UnderlineInputBorder(),
              hintStyle: TextStyle(color: Color(0xFFA8A7A7)),
            ),
          ),
          const SizedBox(height: 10),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Password',
              border: UnderlineInputBorder(),
              hintStyle: TextStyle(color: Color(0xFFA8A7A7)),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 258,
            height: 44,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DashboardScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF0036),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              child:
                  const Text('Log In', style: TextStyle(color: Colors.white)),
            ),
          ),
          const SizedBox(height: 10),
          const Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Forgot Password?',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          const SizedBox(height: 10),
          const Text('OR', style: TextStyle(color: Colors.grey)),
          const SizedBox(height: 10),
          _buildSocialIcons(),
        ],
      ),
    );
  }

  /// Sign up form UI
  static Widget _buildSignUpForm(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const TextField(
            decoration: InputDecoration(
              hintText: 'Enter email or username',
              border: UnderlineInputBorder(),
              hintStyle: TextStyle(color: Color(0xFFA8A7A7)),
            ),
          ),
          const SizedBox(height: 10),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Password',
              border: UnderlineInputBorder(),
              hintStyle: TextStyle(color: Color(0xFFA8A7A7)),
            ),
          ),
          const SizedBox(height: 10),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Confirm Password',
              border: UnderlineInputBorder(),
              hintStyle: TextStyle(color: Color(0xFFA8A7A7)),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 258,
            height: 44,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DashboardScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF0036),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              child:
                  const Text('Sign Up', style: TextStyle(color: Colors.white)),
            ),
          ),
          const SizedBox(height: 10),
          const Text('OR', style: TextStyle(color: Colors.grey)),
          const SizedBox(height: 10),
          _buildSocialIcons(),
        ],
      ),
    );
  }

  /// Social media icons row
  static Widget _buildSocialIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _socialIcon('assets/Images/facebook-2.png'),
        const SizedBox(width: 20),
        _socialIcon('assets/Images/twitter.png'),
        const SizedBox(width: 20),
        _socialIcon('assets/Images/google.png'),
      ],
    );
  }

  /// Single social icon
  static Widget _socialIcon(String path) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: Colors.white,
      child: Image.asset(path, height: 24),
    );
  }
}
