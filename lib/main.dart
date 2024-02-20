import 'package:flutter/material.dart';
import 'package:islam_rrrrrr/home_screen/home.dart';
import 'package:islam_rrrrrr/my_theme.dart';
import 'package:islam_rrrrrr/splash_screen/splash.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Splash.routeName,
      routes: {
        Splash.routeName: (context) => Splash(),
        HomeScreen.routeName: (context) => HomeScreen(),
      },
      theme: MyTheme.lightMode,
    );
  }
}
