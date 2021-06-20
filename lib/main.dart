import 'package:flutter/material.dart';
import 'CertsScreen/CertsScreen.dart';
import 'Header/Header.dart';
import 'ProjectsScreen/ProjectsScreen.dart';
import 'Who/WhoScreen.dart';

import 'package:page_transition/page_transition.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

var backgroundImage1;
var backgroundImage2;
var backgroundImage3;
var navImage1;
var navImage2;
var navImage3;


void main() {
  runApp(
    MaterialApp(

      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen.withScreenFunction(
        splash: 'icons/portfolio.png',
        splashTransition: SplashTransition.scaleTransition,
        pageTransitionType: PageTransitionType.fade,
        backgroundColor: Colors.black,
        curve: Curves.easeIn,
        screenFunction: () async {
          backgroundImage1 = AssetImage("background/whoBackground.png");
          backgroundImage2 = AssetImage("background/certsBackground.png");
          backgroundImage3 = AssetImage("background/projectsBackground.png");
          navImage1 = AssetImage("background/navBackground1.png");
          navImage2 = AssetImage("background/navBackground2.png");
          navImage3 = AssetImage("background/navBackground3.png");
          return MyApp();
        },
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  AssetImage image = navImage1;
  bool condition = false;

  void _setIndex(int i) {
    setState(() {
      if (i == 0) {
        image = navImage1;
        condition = false;
      } else if (i == 1) {
        image = navImage2;
        condition = true;
      } else if (i == 2) {
        image = navImage3;
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
                height: MediaQuery.of(context).size.width>800? 100: 70,
                child: Header(_setIndex, image, this.condition),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
