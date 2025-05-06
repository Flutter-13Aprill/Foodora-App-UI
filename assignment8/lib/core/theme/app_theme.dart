import 'package:assignment8/core/text/text_styles.dart';
import 'package:assignment8/core/theme/app_palette.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    scaffoldBackgroundColor: AppPalette.whiteColor,
    appBarTheme: AppBarTheme(backgroundColor: AppPalette.whiteColor),
    // drawerTheme: DrawerThemeData(),
    searchBarTheme: SearchBarThemeData(
      backgroundColor: WidgetStateProperty.all(AppPalette.whiteColor),
      side: WidgetStateProperty.all(BorderSide(color: AppPalette.hintColor)),
      hintStyle: WidgetStateProperty.all(
        TextStyles.poppins400.copyWith(color: AppPalette.hintColor),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppPalette.redColor,
        foregroundColor: AppPalette.whiteColor,
        minimumSize: const Size(258, 44),
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xFFDADADA)),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xFFDADADA)),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xFFDADADA), width: 1.5),
      ),
      hintStyle: TextStyle(
        color: Colors.grey.shade400,
        fontWeight: FontWeight.w400,
        fontSize: 14,
      ),
      contentPadding: EdgeInsets.symmetric(vertical: 12),
    ),
  );
}
