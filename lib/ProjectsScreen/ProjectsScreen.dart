import 'package:flutter/material.dart';

import 'SingleProject.dart';


class ProjectsScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height*2 -100,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("background/projectsBackground.png"),
              fit: BoxFit.cover
            )
        ),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            SingleProject(0),
            SingleProject(1),
          ],
        ),
      ),
    );
  }
}
