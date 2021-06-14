import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
        child: Image.asset(
        "icons/portfolio.png",
        fit: BoxFit.contain,
        color: Colors.white,
      ),
    );
  }
}
