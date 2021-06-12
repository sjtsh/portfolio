import 'package:flutter/material.dart';

import 'Send.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final _formKey = GlobalKey<FormState>();

  final name = TextEditingController();
  final subject = TextEditingController();
  final description = TextEditingController();

  @override
  void dispose() {
    name.dispose();
    subject.dispose();
    description.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 700,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 60,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
                child: TextFormField(
                  controller: name,
                  textAlignVertical: TextAlignVertical.center,
                  keyboardAppearance: Brightness.dark,
                  cursorColor: Colors.white,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter name';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Name / Company",
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 60,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
                child: TextFormField(
                  controller: subject,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter purpose';
                    }
                    return null;
                  },
                  textAlignVertical: TextAlignVertical.center,
                  enableSuggestions: true,
                  keyboardAppearance: Brightness.dark,
                  cursorColor: Colors.white,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Subject",
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 250,
              child: Container(
                margin: EdgeInsets.all(10),
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 20, left: 20, top: 20, bottom: 20),
                      child: TextFormField(
                        controller: description,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter context';
                          }
                          return null;
                        },
                        maxLines: 10,
                        textAlignVertical: TextAlignVertical.center,
                        enableSuggestions: true,
                        keyboardAppearance: Brightness.dark,
                        cursorColor: Colors.white,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Description",
                          hintStyle: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Send(_formKey, name, subject, description,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
