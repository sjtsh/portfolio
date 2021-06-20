import 'dart:ui';

import 'package:flutter/material.dart';

import 'AboutData.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10,
          sigmaY: 10,
        ),
        child: Container(
          height: width>500 ? 400: 200,
          width: width>500 ? 500: 250,
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
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              width>500 ? SizedBox(
                height: 50,
              ): SizedBox(height:20),
              Container(
                child: Text(
                  "Sajat Shrestha",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: width>500 ? 40: 25,
                    color: Color(0xffC6F0FF),
                  ),
                ),
              ),
              width>500 ? SizedBox(
                height: 40,
              ): Container(),
              AboutData("Studying at     ", "Herald College"),
              AboutData("Job Preference ", "Flutter dev"),
              AboutData("Address           ", "Bkt, Nepal"),
              AboutData("Contact           ", "9818173521"),
            ],
          ),
        ),
      ),
    );
  }
}
