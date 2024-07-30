import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const Color PrimaryColor = Color(0xFFB7935F);
  static final ThemeData lightThemeData = ThemeData(
    primaryColor:PrimaryColor ,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        color: Colors.transparent,
        titleTextStyle: TextStyle(
            fontFamily: "El Messeri",
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.black)),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor:PrimaryColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xFF707070),
      selectedIconTheme: IconThemeData(
        size: 28,
        color: Color(0xFF707070),
      ),
      unselectedItemColor: Color(0xFFF8F8F8),
      unselectedIconTheme: IconThemeData(
        size: 28,
        color: Color(0xFFF8F8F8),
      ),
      selectedLabelStyle:
      TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
      showUnselectedLabels: false,
      //showSelectedLabels: false//true
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
          fontFamily: "El Messeri",
          fontWeight: FontWeight.w500,
          fontSize: 25,
          color: Colors.black),
      bodyLarge: TextStyle(
          fontFamily: "El Messeri",
          fontWeight: FontWeight.w500,
          fontSize: 30,
          color: Colors.black),
      bodyMedium: TextStyle(
          fontFamily: "El Messeri",
          fontWeight: FontWeight.w400,
          fontSize: 25,
          color: Colors.black),
      bodySmall: TextStyle(
          fontFamily: "El Messeri",
          fontWeight: FontWeight.w400,
          fontSize: 20,
          color: Colors.black),
      displaySmall: TextStyle(
          fontFamily: "El Messeri",
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: Colors.black),

    ),
    dividerTheme: DividerThemeData(
        color: PrimaryColor,
        thickness: 5
    ),

  );
}