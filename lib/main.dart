import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import './models/home.dart';
import './models/anisplash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trade Masti',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: AnimatedSplashScreen(
        splash: AniSplash(),
        duration: 2500,
        nextScreen: MyHomePage(title: "Trade Masti"),
        backgroundColor: Color.fromARGB(255, 211, 240, 254),
        animationDuration: Duration(milliseconds: 1500),
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.leftToRight,
      ),
    );
  }
}
