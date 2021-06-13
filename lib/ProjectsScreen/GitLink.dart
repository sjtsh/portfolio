import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import "package:hovering/hovering.dart";

// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_icons/flutter_icons.dart';


class GitLink extends StatefulWidget {

  final int index;

  GitLink(this.index);

  @override
  _GitLinkState createState() => _GitLinkState();
}

class _GitLinkState extends State<GitLink> {

  final List list = const["https://github.com/sjtsh/Appetit", "https://github.com/sjtsh/Wardrobe", "https://github.com/sjtsh/portfolio"];

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      disabledColor: Colors.grey,
      onPressed: () async {
        js.context.callMethod('open',
            [list[widget.index]]);
      },
      child: Container(
        height: 80,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.green,
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
                "On Github  ",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              Icon(
                FontAwesome.github,
                color: Colors.black,
                size: 50,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "On Github  ",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Icon(
                FontAwesome.github,
                color: Colors.white,
                size: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
