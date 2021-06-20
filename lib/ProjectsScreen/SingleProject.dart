import 'package:flutter/material.dart';
import 'package:portfolio/CertsScreen/Indicator.dart';

import 'ProjectImage.dart';
import 'ProjectText.dart';
import 'Spheres.dart';

class SingleProject extends StatelessWidget {
  final int index;

  SingleProject(
    this.index,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
        flex: MediaQuery.of(context).size.width>800? 9: 1,
          child: Stack(
            children: [
              Spheres1(index),
              Spheres3(index),
              Column(
                children: [
                  MediaQuery.of(context).size.width >800? Expanded(child: Container()): Container(),
                  MediaQuery.of(context).size.width >800? Expanded(child: Container()): Container(),
                  ProjectImage(index),
                  Indicator([1, 2, 3], index, false),
                  MediaQuery.of(context).size.width >800? Expanded(child: Container()): Container(),
                ],
              ),
              Spheres2(index),
              Spheres4(index),
            ],
          ),
        ),
        Flexible(
          flex: MediaQuery.of(context).size.width>800? 10: 3,
          child: Column(
            children: [
              ProjectText(index),
              MediaQuery.of(context).size.width>800 ? Expanded(child: Container()) : Container(),
            ],
          ),
        ),
      ],
    );
  }
}
