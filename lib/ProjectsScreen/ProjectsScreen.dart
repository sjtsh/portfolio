import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'SingleProject.dart';

class ProjectsScreen extends StatefulWidget {
  @override
  _ProjectsScreenState createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 1.8,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("background/projectsBackground.png"),
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        )),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Expanded(
              child: PageView(
                pageSnapping: true,
                children: [
                  SingleProject(
                    0,
                  ),
                  SingleProject(
                    1,
                  ),
                  SingleProject(
                    2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
