import 'package:flutter/material.dart';
import 'package:portfolio/CertsScreen/Indicator.dart';

import 'ProjectImage.dart';
import 'ProjectText.dart';

class SingleProject extends StatelessWidget {
  final int index;

  SingleProject(
    this.index,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Container()),
        ProjectImage(index),
        Expanded(child: Container()),
        Indicator([1, 2, 3], index, false),
        Expanded(child: Container()),
        ProjectText(index),
        Expanded(child: Container()),
        Expanded(child: Container()),
      ],
    );
  }
}
