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
    return Flexible(
      child: Column(
        children: [
          Flexible(
          flex: 9,
            child: Stack(
              children: [
                Spheres1(index),
                Spheres3(index),
                Column(
                  children: [
                    Expanded(child: Container()),
                    Expanded(child: Container()),
                    ProjectImage(index),
                    Indicator([1, 2, 3], index, false),
                    Expanded(child: Container()),
                  ],
                ),
                Spheres2(index),
                Spheres4(index),
              ],
            ),
          ),
          Flexible(
            flex: 10,
            child: Column(
              children: [
                ProjectText(index),
                Expanded(child: Container()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
