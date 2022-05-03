import 'package:flutter/material.dart';

class AniSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AspectRatio(
        aspectRatio: 25 / 25,
        child: Image(
          image: AssetImage(
            'assets/image/WhatsApp Image 2022-04-27 at 3.02.03 PM.jpg',
          ),
        ),
      ),
    );
  }
}
