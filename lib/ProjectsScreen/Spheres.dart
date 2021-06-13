import 'package:flutter/material.dart';

List list = const[
  [Color(0xff767676), Color(0xff343434)],
  [Color(0xffD2E4FF), Color(0xff0065FF)],
  [Color(0xff767676), Color(0xff343434)],
];
List list2 = const[
  Colors.black,
  Color(0xff0065FF),
  Colors.black,
];
List projectLogos = const["icons/appetit.png", "icons/wardrobe.png", "icons/portfolio.png"];


class Spheres1 extends StatelessWidget {
  final int index;

  Spheres1(this.index);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 30,
      right: 150,
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: list[index],
          ),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: list2[index].withOpacity(0.5),
                blurRadius: 20,
                spreadRadius: 10)
          ],
        ),
      ),
    );
  }
}

class Spheres2 extends StatelessWidget {
  final int index;

  Spheres2(this.index);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 80,
      left: 800,
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: list[index],
          ),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

class Spheres3 extends StatelessWidget {
  final int index;

  Spheres3(this.index);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 50,
      right: 800,
      child: Container(
        height: 75,
        width: 75,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: list[index],
          ),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: list2[index].withOpacity(0.2),
                blurRadius: 20,
                spreadRadius: 10)
          ],
        ),
      ),
    );
  }
}

class Spheres4 extends StatelessWidget {
  final int index;

  Spheres4(this.index);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 40,
      left: 100,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: list[index],
          ),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: list2[index].withOpacity(0.25),
                blurRadius: 20,
                spreadRadius: 10)
          ],
        ),
      ),
    );
  }
}