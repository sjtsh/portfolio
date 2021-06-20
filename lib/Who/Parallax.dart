import 'package:flutter/material.dart';


class Parallax extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        parallaxBackground(context),
        parallaxGradient(),
        parallaxText(),
      ],
    );
  }

  Widget parallaxBackground(BuildContext context) {
    return Image.asset(
      "assets/me.jpeg",
      fit: BoxFit.contain,
    );
  }

  Widget parallaxGradient(){
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.6, 0.95],
          ),
        ),
      ),
    );
  }


  Widget parallaxText(){
    return Positioned(
      left: 20,
      bottom: 50,
      child: Text(
        "Python • C • Java • Dart\nHTML • CSS • Flutter • XML\nMySQL • Firebase",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          letterSpacing: 2,
          wordSpacing: 2,
        ),
      ),
    );
  }
}

class ParallaxFlowDelegate extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    // TODO: implement paintChildren
  }

  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
    return BoxConstraints.tightFor(
      width: constraints.maxWidth,
    );
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}


