import 'package:flutter/material.dart';
import 'package:islam_rrrrrr/home_screen/home.dart';

class Splash extends StatelessWidget {
  static const String routeName = 'splash';
  const Splash ({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 4),
        (){
    Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Image.asset('assets/images/splashh.jpg'),
    );
  }
}
