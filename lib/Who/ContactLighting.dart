import 'package:flutter/material.dart';

class ContactLighting extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 100.0),
      child: Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
      gradient: RadialGradient(colors: [Color(0x9956ccf2), Color(0x56ccf2)],),
      ),
      ),
    );
  }
}
