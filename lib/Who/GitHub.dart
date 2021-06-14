import 'dart:ui';

// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import "package:hovering/hovering.dart";

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Who/ContactLighting.dart';

class GitHub extends StatefulWidget {
  @override
  _GitHubState createState() => _GitHubState();
}

class _GitHubState extends State<GitHub> {
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
              js.context.callMethod(
                  'open', ['https://github.com/sjtsh?tab=repositories']);
            },
            child: Stack(
            overflow: Overflow.clip,
            alignment: Alignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 30.0, right: 30, bottom: 30),
                  height: 100,
                  width: 100,
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
                      FontAwesomeIcons.github,
                      size: 40,
                      color: Colors.white,
                    ),
                    child: Icon(
                      FontAwesomeIcons.github,
                      color: Colors.black,
                      size: 40,
                    ),
                  ),
                ),
                ContactLighting(),
              ],
            ),
          ),
        ));
  }
}
