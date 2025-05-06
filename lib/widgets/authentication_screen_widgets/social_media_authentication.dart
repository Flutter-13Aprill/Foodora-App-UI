import 'package:flutter/material.dart';

// --- External Packages
import 'package:flutter_svg/svg.dart';

class SocialMediaAuthentication extends StatelessWidget {
  
  /// [SocialMediaAuthentication] represents the list of social platforms available for sign-up or login,
  /// such as Facebook, X (formerly Twitter), and Google.
  const SocialMediaAuthentication({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Color(0xffEEEEF6)),
            borderRadius: BorderRadius.circular(45),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(175, 182, 217, 0.16),
                blurRadius: 3,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SvgPicture.asset(
              'assets/authentication_screen/authentication_screen_svgs/facebook_logo.svg',
            ),
          ),
        ),

        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Color(0xffEEEEF6)),
            borderRadius: BorderRadius.circular(45),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(175, 182, 217, 0.16),
                blurRadius: 3,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SvgPicture.asset(
              'assets/authentication_screen/authentication_screen_svgs/X_logo.svg',
            ),
          ),
        ),

        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Color(0xffEEEEF6)),
            borderRadius: BorderRadius.circular(45),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(175, 182, 217, 0.16),
                blurRadius: 3,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SvgPicture.asset(
              'assets/authentication_screen/authentication_screen_svgs/google_logo.svg',
            ),
          ),
        ),
      ],
    );
  }
}
