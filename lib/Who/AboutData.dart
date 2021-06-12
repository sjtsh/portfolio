import 'package:flutter/material.dart';

class AboutData extends StatelessWidget {
  final String query;
  final String ans;

  AboutData(this.query, this.ans);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 90),
      child: Row(
        children: [
          Expanded(
            child: Text(
              query + ": ",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Text(
              "  " + ans,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white.withOpacity(0.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
