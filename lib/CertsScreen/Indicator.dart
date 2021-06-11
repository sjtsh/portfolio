import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {

  final List imgList;
  final int _current;

  Indicator(this.imgList, this._current);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: imgList.map((url) {
        int index = imgList.indexOf(url);
        return Container(
          width: 8.0,
          height: 8.0,
          margin:
          EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _current == index
                ? Colors.white
                : Colors.white.withOpacity(0.5),
          ),
        );
      }).toList(),
    );
  }
}
