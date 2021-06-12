import 'dart:ui';

import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10,
          sigmaY: 10,
        ),
        child: Container(
          height: 650,
          width: 450,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.2),
                Colors.white.withOpacity(0.05),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.white.withOpacity(0.08),
            ),
          ),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    "assets/me.jpeg",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Python • C • Java • Dart\nHTML • CSS • Flutter • XML\nMySQL • Firebase",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    letterSpacing: 2,
                    wordSpacing: 2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
