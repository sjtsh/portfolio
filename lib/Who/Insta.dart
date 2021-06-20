import 'dart:ui';

// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import "package:hovering/hovering.dart";

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Insta extends StatefulWidget {

  @override
  _InstaState createState() => _InstaState();
}

class _InstaState extends State<Insta> {
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 6,
          sigmaY: 6,
        ),
        child: MaterialButton(
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          onPressed: () {
            js.context.callMethod('open',
                ['https://www.instagram.com/_sajat_/']);
          },
          child: Container(
            margin:  MediaQuery.of(context).size.width>900 ? const EdgeInsets.only(left: 30.0, right: 30, bottom: 30): const EdgeInsets.only(left: 10, right: 10, bottom: 30),
            height:  MediaQuery.of(context).size.width>900 ? 100: 50,
            width:  MediaQuery.of(context).size.width>900 ? 100: 50,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  Colors.white.withOpacity(0.4),
                  Colors.white.withOpacity(0.1),
                ],
              ),
              shape: BoxShape.circle,
            ),
            child: HoverWidget(
              onHover: (PointerEnterEvent event) {
                setState(() {});
              },
              hoverChild: Icon(
                FontAwesomeIcons.instagram,
                size:  MediaQuery.of(context).size.width>900 ? 40: 20,
                color: Colors.white,
              ),
              child: Icon(
                FontAwesomeIcons.instagram,
                color: Colors.black,
                size:  MediaQuery.of(context).size.width>900 ? 40: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
