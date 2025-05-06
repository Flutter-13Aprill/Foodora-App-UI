import 'package:flutter/material.dart';

extension ScreenSize on BuildContext{
double getwidth(){return MediaQuery.sizeOf(this).width;}
double getheight(){return MediaQuery.sizeOf(this).height;}

}