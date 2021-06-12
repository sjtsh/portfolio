import 'dart:ui';

import 'package:clipboard/clipboard.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import "package:hovering/hovering.dart";

class Phone extends StatefulWidget {
  @override
  _PhoneState createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
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
            FlutterClipboard.copy('9818173521');
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
              '9818173521 copied to clipboard',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            )));
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
                Icons.phone,
                size: 40,
                color: Colors.white,
              ),
              child: Icon(
                Icons.phone,
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
