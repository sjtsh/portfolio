import 'package:flutter/material.dart';
import 'package:portfolio/Header/NavBar.dart';

import 'Logo.dart';

class Header extends StatelessWidget {
  final Function _setIndex;
  final String image;
  final bool condition;

  Header(this._setIndex, this.image, this.condition);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: !condition? DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
        ): null,
        color: condition? Colors.transparent: null,
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
            ),
            Logo(),
            Expanded(
              child: Container(),
            ),
            NavBar(_setIndex),
            Expanded(
              child: Container(),
            ),
            SizedBox(
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
}
