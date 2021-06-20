import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Who/Fb.dart';
import 'package:portfolio/Who/GitHub.dart';
import 'package:portfolio/Who/Mail.dart';
import 'package:portfolio/Who/MyImage.dart';
import 'package:portfolio/Who/Phone.dart';

import '../main.dart';
import 'About.dart';
import 'Contact.dart';
import 'Insta.dart';
import 'Resume.dart';

class WhoScreen extends StatefulWidget {
  @override
  _WhoScreenState createState() => _WhoScreenState();
}

class _WhoScreenState extends State<WhoScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              width: double.infinity,
              height: constraints.maxHeight * 3 + 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: backgroundImage1,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    height: constraints.maxHeight + 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Hi, I'm a Software Developer",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width>800? 60: 30,
                          ),
                        ),
                        Resume(),
                      ],
                    ),
                  ),
                  Container(
                    height: constraints.maxHeight,
                    child: MediaQuery.of(context).size.width>800? Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(child: Container()),
                        About(),
                        Expanded(child: Container()),
                        MyImage(),
                        Expanded(child: Container()),
                      ],
                    ): Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(child: Container()),
                        About(),
                        Expanded(child: Container()),
                        MyImage(),
                        Expanded(child: Container()),
                      ],
                    ),
                  ),
                  Container(
                    height: constraints.maxHeight,
                    child: Column(
                      children: [
                        Expanded(child: Container()),
                        Text(
                          "Feel free to say Hi",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width >500 ? 40: 25,
                            color: Color(0xffC6F0FF),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Contact(),
                        Expanded(child: Container()),
                        MediaQuery.of(context).size.width>900 ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Fb(),
                            GitHub(),
                            Mail(),
                            Phone(),
                            Insta(),
                          ],
                        ):Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Fb(),
                                GitHub(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Mail(),
                                Phone(),
                                Insta(),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      );
    });
  }
}
