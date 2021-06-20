import 'package:flutter/material.dart';
import 'package:portfolio/Header/NavBar.dart';

import 'Logo.dart';

class Header extends StatelessWidget {
  final Function _setIndex;
  final AssetImage image;
  final bool condition;

  Header(this._setIndex, this.image, this.condition);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        image: !condition
            ? DecorationImage(
                image: image,
                fit: BoxFit.cover,
              )
            : null,
        color: condition ? Colors.transparent : null,
      ),
      child: SafeArea(
        child: width > 800
            ? Row(
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
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Container(),
                  NavBar(_setIndex),
                ],
              ),
      ),
    );
  }
}
