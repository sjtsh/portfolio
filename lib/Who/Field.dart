import 'package:flutter/material.dart';

class Field extends StatelessWidget {

  final String placeholder;

  Field(this.placeholder);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.4),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          enableSuggestions: true,
          keyboardAppearance: Brightness.dark,
          cursorColor: Colors.white,
          onSubmitted: (String input) {},
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: placeholder,
            hintStyle: TextStyle(
              color: Colors.white.withOpacity(0.5),
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
