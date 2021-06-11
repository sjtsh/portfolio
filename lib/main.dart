import 'package:flutter/material.dart';
import 'package:portfolio/Header/NavBar.dart';
import 'CertsScreen/CertsScreen.dart';
import 'Header/Header.dart';
import 'ProjectsScreen/ProjectsScreen.dart';
import 'Who/WhoScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String image = "background/navBackground1.png";
  bool condition = false;
  void _setIndex(int i) {
    setState(() {
      if (i == 0) {
        image = "background/navBackground1.png";
        condition = false;
      } else if (i == 1) {
        image = "background/navBackground2.png";
        condition = true;
      } else if (i == 2) {
        image = "background/navBackground3.png";
        condition = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData(
        fontFamily: "ABeeZee",
      ),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Scaffold(
          body: Stack(
            children: [
              TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  WhoScreen(),
                  CertsScreen(),
                  ProjectsScreen(),
                ],
              ),
              Container(
              height: 100,
                child: Header(_setIndex, image, this.condition),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
