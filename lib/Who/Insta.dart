import 'dart:ui';
import 'dart:ui';

// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:clipboard/clipboard.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import "package:hovering/hovering.dart";

// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_icons/flutter_icons.dart';

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
                FontAwesome.instagram,
                size: 40,
                color: Colors.white,
              ),
              child: Icon(
                FontAwesome.instagram,
                color: Colors.black,
                size: 40,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
