import 'package:assignment8/core/text/app_text.dart';
import 'package:assignment8/core/theme/app_palette.dart';
import 'package:assignment8/features/auth/pages/login_page.dart';
import 'package:assignment8/features/auth/pages/signup_page.dart';
import 'package:flutter/material.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Center(
        child: Container(
          width: 360,
          height: 500,
          decoration: BoxDecoration(
            color: AppPalette.whiteColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: AppPalette.blackColor.withValues(alpha: 0.5),
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TabBar(
                  dividerHeight: 0,
                  indicatorColor: AppPalette.whiteColor,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 12),
                  indicator: BoxDecoration(
                    color: AppPalette.redColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  unselectedLabelColor: AppPalette.redColor,
                  labelColor: AppPalette.whiteColor,
                  indicatorSize: TabBarIndicatorSize.tab,

                  tabs: [Tab(text: AppText.logIn), Tab(text: AppText.signUp)],
                ),
                Expanded(
                  child: TabBarView(children: [LoginPage(), SignupPage()]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
