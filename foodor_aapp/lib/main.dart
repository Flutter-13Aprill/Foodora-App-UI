 
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodor_aapp/Screens/dashboard_screen.dart';
 import 'package:foodor_aapp/Screens/login_screen.dart';
import 'package:foodor_aapp/Screens/signup_screen.dart';
import 'package:foodor_aapp/Screens/test.dart';
import 'package:foodor_aapp/Screens/welcome_screen.dart';
import 'package:foodor_aapp/widgets/food_categories.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});
@override
Widget build(BuildContext context) {
  return ScreenUtilInit(
    designSize: const Size(390, 844),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        
        home:  DashboardScreen(), // Use const for performance
      ); // MaterialApp
    },
  );
}
}
