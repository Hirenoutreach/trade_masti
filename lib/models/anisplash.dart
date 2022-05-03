import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import './home.dart';

class AniSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset(
        'assets/image/WhatsApp Image 2022-04-27 at 3.02.03 PM.jpg',
        scale: 0.1,
        fit: BoxFit.fill,
      ),
      duration: 2500,
      nextScreen: MyHomePage(title: "Trade Masti"),
      backgroundColor: Color.fromARGB(255, 211, 240, 254),
      animationDuration: Duration(milliseconds: 1500),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.leftToRight,
    );
  }
}
