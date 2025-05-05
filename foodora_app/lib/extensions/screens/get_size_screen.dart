import 'package:flutter/material.dart';

extension Screen on BuildContext {
  double getWidth() {
    return MediaQuery.sizeOf(this).width / 2;
  }

  double getHeight() {
    return MediaQuery.sizeOf(this).height;
  }
}
