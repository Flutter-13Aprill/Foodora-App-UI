import 'package:flutter/material.dart';
import 'package:foodora/Widgets/login.dart';
import 'package:foodora/Widgets/signup.dart';
import 'package:google_fonts/google_fonts.dart';

class EntryScreen extends StatefulWidget {
  const EntryScreen({super.key});
  @override
  State<EntryScreen> createState() => _EntryScreenState();
}

class _EntryScreenState extends State<EntryScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Image.asset("assests/images/entry_background.png"),
            Center(
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          spreadRadius: 5)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                width: 310,
                height: 480,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(32),
                      child: Container(
                        height: 28,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color:
                                    const Color.fromARGB(255, 234, 234, 234)),
                            borderRadius: BorderRadius.circular(50)),
                        child: TabBar(
                            labelStyle: GoogleFonts.poppins(fontSize: 14),
                            indicatorSize: TabBarIndicatorSize.tab,
                            dividerColor: Colors.white,
                            labelColor: Colors.white,
                            unselectedLabelColor:
                                const Color.fromARGB(255, 255, 0, 54),
                            indicator: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 0, 54),
                                borderRadius: BorderRadius.circular(50)),
                            tabs: const [
                              Tab(
                                text: "Log In",
                              ),
                              Tab(
                                text: "Sign Up",
                              ),
                            ]),
                      ),
                    ),
                    const Expanded(
                      child: TabBarView(children: [Login(), SignUp()]),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                right: -60,
                bottom: -610,
                child: Image.asset("assests/images/Vegitables.png"))
          ],
        ),
      ),
    );
  }
}
