import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:trade_masti/anisplash.dart';

import './home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
        splash: AniSplash(),
        // duration: 6000,
        nextScreen: MyHomePage(title: "Trade Masti"),
        backgroundColor: Colors.cyan,
        animationDuration: Duration(milliseconds: 1500),
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}
