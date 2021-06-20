import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import "package:hovering/hovering.dart";

class NavBar extends StatefulWidget {
  final Function _setIndex;

  NavBar(this._setIndex);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  Color color = Color(0xffC6F0FF);
  Color color2 = Color(0xff56CCF2);

  _setNav(int i) {
    setState(() {
      if (i == 0) {
        color = Color(0xffC6F0FF);
        color2 = Color(0xff56CCF2);
      } else if (i == 1) {
        color = Color(0xffFFDCC8);
        color2 = Color(0xffDD5201);
      } else if (i == 2) {
        color = Color(0xffD3FFE6);
        color2 = Color(0xff219653);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: TabBar(
        onTap: (int i) {
          widget._setIndex(i);
          _setNav(i);
        },
        indicator: UnderlineTabIndicator(
            borderSide: BorderSide(
              color: color2,
              width: 4.0,
            ),
            insets: EdgeInsets.fromLTRB(30, 0, 30, 0)),
        indicatorWeight: 15,
        labelColor: color,
        unselectedLabelColor: Colors.white,
        tabs: [
          Tab(
            child: HoverWidget(
              onHover: (PointerEnterEvent event) {
                setState(() {});
              },
              hoverChild: Text(
                "Who",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width>800? 20: 16,
                  letterSpacing: 1.3,
                  fontWeight: FontWeight.w100,
                  fontFamily: "Roboto",
                  color: Color(0xff56CCF2),
                ),
              ),
              child: Text(
                "Who",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width>800? 20: 16,
                  letterSpacing: 1.3,
                  fontWeight: FontWeight.w100,
                  fontFamily: "Roboto",
                ),
              ),
            ),
          ),
          Tab(
            child: HoverWidget(
              onHover: (PointerEnterEvent event) {
                setState(() {});
              },
              hoverChild: Text(
                "Certs",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width>800? 20: 16,
                  letterSpacing: 1.3,
                  fontWeight: FontWeight.w100,
                  fontFamily: "Roboto",
                  color: Color(0xffDD5201),
                ),
              ),
              child: Text(
                "Certs",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width>800? 20: 16,
                  letterSpacing: 1.3,
                  fontWeight: FontWeight.w100,
                  fontFamily: "Roboto",
                ),
              ),
            ),
          ),
          Tab(
            child: HoverWidget(
              onHover: (PointerEnterEvent event) {
                setState(() {});
              },
              hoverChild: Text(
                "Projects",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width>800? 20: 16,
                  letterSpacing: 1.3,
                  fontWeight: FontWeight.w100,
                  fontFamily: "Roboto",
                  color: Color(0xff219653),
                ),
              ),
              child: Text(
                "Projects",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width>800? 20: 16,
                  letterSpacing: 1.3,
                  fontWeight: FontWeight.w100,
                  fontFamily: "Roboto",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
