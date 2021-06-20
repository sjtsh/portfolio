import 'dart:ui';

import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: width>500 ? 600: 300,
          width: width>500 ? 450: 225,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/me.jpeg",), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        Container(
          height: width>500 ? 600: 300,
          width: width>500 ? 450: 225,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                Colors.black,
              ],
              begin: Alignment.center,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        Positioned(
          bottom: 10,
          child: Text(
            "Python • C • Java • Dart\nHTML • CSS • Flutter • XML\nMySQL • Firebase",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: width>500 ? 18: 12,
              letterSpacing: 2,
              wordSpacing: 2,
            ),
          ),
        ),
      ],
    );
  }
}
