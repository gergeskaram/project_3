import 'package:flutter/material.dart';

class MyTheme {
  static Color blackColor = Color(0xff242424);
  static Color primaryLight = Color(0xffB7935F);

  static ThemeData lightMode = ThemeData(
      primaryColor: primaryLight,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryLight,
        selectedItemColor: blackColor,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(fontSize: 18),
        selectedIconTheme: IconThemeData(size: 35),
      ),
      textTheme: TextTheme(
          titleLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)));
}
