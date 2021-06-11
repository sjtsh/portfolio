import 'package:flutter/material.dart';

import 'ProjectImage.dart';
import 'ProjectText.dart';

class SingleProject extends StatelessWidget {

  final int index;

  SingleProject(this.index);

  @override
  Widget build(BuildContext context) {
    var constraints = MediaQuery
        .of(context)
        .size;
    return Container(
      width: constraints.width,
      height: constraints.height - 100,
      child: Row(
        children: [
          Expanded(child: Container(),),
          (index % 2 == 0) ? ProjectImage(index): ProjectText(index),
          SizedBox(width: 30,),
          (index % 2 == 0) ? ProjectText(index): ProjectImage(index),
          Expanded(child: Container(),),
        ],
      ),
    );
  }
}
