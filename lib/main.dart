import 'package:flutter/material.dart';
import 'package:trade_masti/models/signup.dart';

import './models/anisplash.dart';
import 'models/home.dart';
import 'models/mylogin.dart';

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
      initialRoute: 'home',
      routes: {
        'home': (context) => AniSplash(),
        'homepage': (context) => MyHomePage(),
        'signup': (context) => SignUp(),
        'login': (context) => MyLoginPage(),
      },
    );
  }
}
