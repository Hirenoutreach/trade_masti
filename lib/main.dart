import 'package:flutter/material.dart';

import './models/anisplash.dart';
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
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      initialRoute: 'home',
      routes: {
        'home': (context) => AniSplash(),
      },
    );
  }
}
