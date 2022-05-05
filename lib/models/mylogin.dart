// ignore_for_file: unnecessary_string_escapes, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyLoginPage extends StatefulWidget {
  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: Color.fromARGB(255, 211, 240, 254),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image(
              //   image: AssetImage(
              //       "assets\image\WhatsApp Image 2022-04-27 at 3.02.03 PM.jpg"),
              // ),
              Text(
                "TradeMasti",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 44, 162, 168),
                    decoration: TextDecoration.none),
              ),

              SizedBox(
                height: 20,
              ),

              Card(
                elevation: 3,
                color: Color.fromARGB(255, 211, 240, 254),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    fillColor: Colors.grey[100],
                    hintText: "User id",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              // Card(
              //   elevation: 3,
              //   color: Color.fromARGB(255, 211, 240, 254),
              //   child: TextField(
              //     decoration: InputDecoration(
              //       prefixIcon: Icon(Icons.mail),
              //       fillColor: Colors.grey[100],
              //       hintText: "Email id",
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(5),
              //         borderSide: BorderSide.none,
              //       ),
              //     ),
              //   ),
              // ),

              // SizedBox(
              //   height: 10,
              // ),

              Card(
                elevation: 3,
                color: Color.fromARGB(255, 211, 240, 254),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    fillColor: Colors.grey[100],
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sign in",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 44, 162, 168)),
                  ),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Color.fromARGB(255, 44, 162, 168),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'homepage');
                      },
                      icon: Icon(Icons.arrow_forward),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 44, 162, 168)),
                      onPressed: () {
                        Navigator.pushNamed(context, 'signup');
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 217, 240, 241)),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 44, 162, 168)),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
