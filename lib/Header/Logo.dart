import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
        child: SvgPicture.asset(
        "icons/logo.svg",
        fit: BoxFit.contain,
        color: Colors.white,
      ),
    );
  }
}
