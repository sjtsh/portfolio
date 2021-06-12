import 'dart:ui';

// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:clipboard/clipboard.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import "package:hovering/hovering.dart";

class Mail extends StatefulWidget {
  @override
  _MailState createState() => _MailState();
}

class _MailState extends State<Mail> {
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
            FlutterClipboard.copy('mastersajat@gmail.com');
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
              'mastersajat@gmail.com copied to clipboard',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            )));
            js.context.callMethod('open',
                ['https://mail.google.com/mail/u/0/#inbox?compose=new']);
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
                Icons.mail,
                size: 40,
                color: Colors.white,
              ),
              child: Icon(
                Icons.mail,
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
