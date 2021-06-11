import 'dart:ui';

import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  final Widget icon;

  Contacts(this.icon);

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 6,
          sigmaY: 6,
        ),
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
          child: icon,
        ),
      ),
    );
  }
}
