import 'dart:ui';

import 'package:flutter/material.dart';

import 'AboutData.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10,
          sigmaY: 10,
        ),
        child: Container(
          height: 400,
          width: 500,
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
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                padding: const EdgeInsets.only(left: 100),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sajat Shrestha",
                  style: TextStyle(
                    fontSize: 40,
                    color: Color(0xffC6F0FF),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              AboutData("Studying at", "Herald College"),
              AboutData("Job Preference", "Flutter dev"),
              AboutData("Address", "Bkt, Nepal"),
              AboutData("Contact", "9818173521"),
            ],
          ),
        ),
      ),
    );
  }
}
