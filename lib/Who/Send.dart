import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import "package:hovering/hovering.dart";

// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

class Send extends StatefulWidget {
  final _formKey;
  final TextEditingController name;
  final TextEditingController subject;
  final TextEditingController description;

  Send(this._formKey, this.name, this.subject, this.description,);

  @override
  _SendState createState() => _SendState();
}

class _SendState extends State<Send> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: -5,
      child: MaterialButton(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        onPressed:() async {
          if(widget._formKey.currentState!.validate()){
            var url =
                'mailto:mastersajat@gmail.com?subject=${widget.subject.text}&body=Hi, I am ${widget.name.text}, \n${widget.description.text}';
            js.context.callMethod('open', [url]);
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
              'Thank you for your time',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            )));
          }
        },
        child: Container(
          height: MediaQuery.of(context).size.width > 500 ? 60: 40,
          width: MediaQuery.of(context).size.width > 500 ? 60: 40,
          decoration: BoxDecoration(
            color: Color(0xff56CCF2),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: HoverWidget(
              onHover: (PointerEnterEvent event) {
                setState(() {});
              },
              hoverChild: Icon(
                Icons.send,
                color: Colors.white,
              ),
              child: Icon(
                Icons.send,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
