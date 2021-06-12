import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {

  final List imgList;
  final int _current;
  final bool condition;
  Indicator(this.imgList, this._current, this.condition);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: imgList.map((url) {
        int index = imgList.indexOf(url);
        return Container(
          width: 15.0,
          height: 15.0,
          margin:
          EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _current == index
                ? condition? Colors.white: Colors.black
                : condition? Color(0xffFFDCC8) : Color(0xffD3FFE6),
          ),
        );
      }).toList(),
    );
  }
}
