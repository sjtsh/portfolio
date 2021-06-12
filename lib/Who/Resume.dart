
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import "package:hovering/hovering.dart";

class Resume extends StatefulWidget {
  @override
  _ResumeState createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: MaterialButton(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        onPressed: () {
          js.context.callMethod('open', ['https://drive.google.com/uc?id=1oURqwIHYzKQ1XEPriyszOZRPc_g-yBo9&export=download']);
        },
        child: Container(
          height: 80,
          width: 200,
          decoration: BoxDecoration(
            color: Color(0xff1C262F),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 5,
                  offset: Offset(0, 10))
            ],
            borderRadius: BorderRadius.circular(20),
          ),
          child: HoverWidget(
            onHover: (PointerEnterEvent event) {
              setState(() {});
            },
            hoverChild: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Resume  ",
                  style: TextStyle(color: Color(0xff56CCF2), fontSize: 20),
                ),
                Icon(
                  Icons.cloud_download_outlined,
                  color: Color(0xff56CCF2),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Resume  ",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Icon(
                  Icons.cloud_download_outlined,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
