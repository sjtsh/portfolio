import 'package:flutter/material.dart';

class AboutData extends StatelessWidget {
  final String query;
  final String ans;

  AboutData(this.query, this.ans);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).size.width>500? const EdgeInsets.symmetric(vertical: 20.0, horizontal: 90):  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 40),
      child: Row(
        children: [
          Expanded(
            child: Text(
              query + ": ",
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width>500? 20: 10,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Text(
              "  " + ans,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width>500? 20: 10,
                color: Colors.white.withOpacity(0.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
