// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 211, 240, 254),
        title: Text(
          "TradeMasti",
          style: TextStyle(color: Color.fromARGB(255, 44, 162, 168)),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
          icon: Icon(Icons.menu),
          color: Color.fromARGB(255, 44, 162, 168),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Color.fromARGB(255, 44, 162, 168),
          )
        ],
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 219, 243, 255),
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 203, 252, 250),
                    Color.fromARGB(255, 185, 232, 255)
                  ],
                ),
              ),
              child: Container(
                child: Column(
                  children: [
                    CircleAvatar(
                      child: Image.asset(
                          "assets/image/WhatsApp Image 2022-04-27 at 3.02.03 PM.jpg"),
                      radius: 50,
                    ),
                  ],
                ),
              ),
            ),

            // ListTile(
            //     onTap: () {},
            //     title: Text(
            //       "Cricket",
            //       style: TextStyle(color: Color.fromARGB(255, 44, 162, 168)),
            //     )),
            // ListTile(
            //     onTap: () {},
            //     title: Text(
            //       "Football",
            //       style: TextStyle(color: Color.fromARGB(255, 44, 162, 168)),
            //     )),
            // ListTile(
            //     onTap: () {},
            //     title: Text(
            //       "NSE",
            //       style: TextStyle(color: Color.fromARGB(255, 44, 162, 168)),
            //     )),
            // ListTile(
            //     onTap: () {},
            //     title: Text(
            //       "MCX",
            //       style: TextStyle(color: Color.fromARGB(255, 44, 162, 168)),
            //     )),
            CustomListTile(
              leading: Icon(
                Icons.sports_cricket,
                color: Color.fromARGB(255, 44, 162, 168),
              ),
              text: "Cricket",
            ),

            CustomListTile(
              leading: Icon(
                Icons.sports_football,
                color: Color.fromARGB(255, 44, 162, 168),
              ),
              text: "Football",
            ),

            CustomListTile(
              leading: Icon(
                Icons.sports_tennis,
                color: Color.fromARGB(255, 44, 162, 168),
              ),
              text: "Tennis",
            ),

            CustomListTile(
              leading: Icon(
                Icons.price_check,
                color: Color.fromARGB(255, 44, 162, 168),
              ),
              text: "Nse",
            ),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  String? text;
  late Widget leading;

  CustomListTile({required this.leading, this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Color.fromARGB(255, 165, 196, 196),
      onTap: () {},
      child: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: [
                leading,
                SizedBox(
                  width: 10,
                ),
                Text(text!,
                    style: TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 44, 162, 168))),
              ],
            ),
            Icon(
              Icons.arrow_right,
              size: 28,
              color: Color.fromARGB(255, 58, 161, 167),
            ),
          ],
        ),
      ),
    );
  }
}
