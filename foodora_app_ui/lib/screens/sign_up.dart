import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [  
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              'assets/pic/vegetables.png',
              width: 260,
              height: 160,
              fit: BoxFit.contain,
            ),
          ),

          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 220,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/pic/pizza.png',
                        width: double.infinity,
                        height: 220,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/pic/ellipse.png',
                        width: double.infinity,
                        height: 220,
                        fit: BoxFit.cover,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/pic/cloche.png', height: 40),
                          const SizedBox(width: 8),
                          Image.asset('assets/pic/font.png', height: 40),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              //Return to the SignUp page.
                              child: OutlinedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: const Color(0xFFFF0036),
                                  side: const BorderSide(color: Color(0xFFFF0036)),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: const EdgeInsets.symmetric(vertical: 12),
                                ),
                                child: const Text('Login',
                                    style: TextStyle(fontSize: 11)),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFFFF0036),
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: const EdgeInsets.symmetric(vertical: 12),
                                ),
                                child: const Text('Sign Up',
                                    style: TextStyle(fontSize: 11)),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter your email',
                            labelStyle: TextStyle(fontSize: 11),
                            border: UnderlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 4),
                        const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(fontSize: 11),
                            border: UnderlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 4),
                        const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Confirm Password',
                            labelStyle: TextStyle(fontSize: 11),
                            border: UnderlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 12),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                             
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFFF0036),
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            child: const Text('Sign Up',
                                style: TextStyle(fontSize: 11, color: Colors.white)),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text('OR',
                            style: TextStyle(color: Colors.grey, fontSize: 11)),
                        const SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Image.asset('assets/pic/google.png',
                                  width: 30, height: 30),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Image.asset('assets/pic/facebook.png',
                                  width: 30, height: 30),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Image.asset('assets/pic/twitter.png',
                                  width: 30, height: 30),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 150),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
