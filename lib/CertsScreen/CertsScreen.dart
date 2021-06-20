import 'package:flutter/material.dart';

import '../main.dart';
import 'CertSwiper.dart';
import 'Indicator.dart';

final List imgList = const [
  "certificates/Algorithmic Toolbox.jpg",
  "certificates/Python (Basic).png",
  "certificates/android app.jpg",
  "certificates/international cyber conflicts.png",
  "certificates/Network security.jpg",
  "certificates/Software Security.png",
];

class CertsScreen extends StatefulWidget {
  @override
  _CertsScreenState createState() => _CertsScreenState();
}

class _CertsScreenState extends State<CertsScreen> {
  int _current = 0;

  _changeIndicator(int i) {
          setState(() {
        _current = i;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      image: DecorationImage(
      image: backgroundImage2,
      fit: BoxFit.cover
      )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Expanded(
              child: CertSwiper(imgList, _changeIndicator),
            ),
            SizedBox(
              height: 40,
            ),
            Indicator(imgList, _current, true),
          ],
        ),
      ),
    );
  }
}