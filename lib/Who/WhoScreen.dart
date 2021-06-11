import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Who/MyImage.dart';

import 'About.dart';
import 'Contacts.dart';
import 'Field.dart';
import 'Resume.dart';

class WhoScreen extends StatelessWidget {
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
                    image: AssetImage("background/whoBackground.png"),
                    fit: BoxFit.cover),
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
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 60,
                          ),
                        ),
                        Resume(),
                      ],
                    ),
                  ),
                  Container(
                    height: constraints.maxHeight,
                    child: Row(
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
                            fontSize: 40,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          width: 700,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(child: Field("Name")),
                                  Expanded(child: Field("Email")),
                                ],
                              ),
                              Field("Subject"),
                              SizedBox(
                                  height: 250, child: Field("Description")),
                            ],
                          ),
                        ),
                        Expanded(child: Container()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Contacts(Center(
                              child: Padding(
                                  padding: EdgeInsets.only(right: 20, left: 25, bottom: 20, top: 25),
                                  child: Image.asset(
                                    "icons/github.png",
                                    fit: BoxFit.contain,
                                  )),
                            )),
                            Contacts(Icon(
                              Icons.mail,
                              size: 40,
                            )),
                            Contacts(Icon(
                              Icons.call,
                              size: 40,
                            )),
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
