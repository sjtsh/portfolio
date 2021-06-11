import 'package:flutter/material.dart';

class Resume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: MaterialButton(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onPressed: () {},
        child: Container(
          height: 80,
          width: 200,
          decoration: BoxDecoration(
            color: Color(0xff1C262F),
            boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.25), blurRadius: 5, offset: Offset(0, 10))],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Resume  ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                ),
              ),
              Icon(Icons.cloud_download_outlined, color: Colors.white,),
            ],
          ),
        ),
      ),
    );
  }
}
