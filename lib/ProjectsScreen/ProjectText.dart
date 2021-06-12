import 'package:flutter/material.dart';

import 'GitLink.dart';

class ProjectText extends StatelessWidget {
  final List heading = ["APPETIT", "WARDROBE", "PORTFOLIO"];
  final List description = [
    "2021 | Made a Flutter application from scratch for android so users can search for food items or view nearby restaurants featuring\n\n• Sign in with Oauth and Token Service API with GCP\n• Firestore cloud database with GCP and local data storage using file handling\n• Location tracing and google maps integration using Maps SDK\n• S3 storage with AWS to store dynamic product assets\n• Asynchronous programming and periodic timer with a progress bar\n• Configuration for Dark and Light theme\n• Used skeletons to build pre placements\n\nUsed Firebase as database, Dart as backend, Flutter as framework, Google as cloud service provider, Amazon for storage, Git for version control and Figma for design",
    "2021 | Made the Front end for Flutter application from scratch for android with all design principles in mind featuring\n\n• Accessibility features such as semantics and built in invert colors toggle\n• Satisfied all of the usability heuristics with 8 different screens\n• Used Pre cache in order to load the assets before hand in order to improve the performance of image loading\n• Implemented feedback from different accessibility testing methodologies such as contrast ratio and clickable items\n\nUsed Dart as backend, Flutter as framework, Git for version control and Figma for design",
    "2021 | Made a static minimalist Flutter web application from scratch as a repository for my projects featuring\n\n"
  ];
  final int index;

  ProjectText(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      height: MediaQuery.of(context).size.height * 0.8,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.6),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              heading[index],
              style: TextStyle(
                color: Color(0xffD3FFE6),
                fontWeight: FontWeight.w500,
                fontFamily: "Roboto",
                fontSize: 40,
              ),
            ),
            Expanded(child: Container()),
            Text(
              description[index],
              textAlign: TextAlign.justify,
              style: TextStyle(
              fontSize: 26,
                color: Colors.white,
              ),
            ),
            Expanded(child: Container()),
            GitLink(index),
            Expanded(child: Container()),
          ],

        ),
      ),
    );
  }
}