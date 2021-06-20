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
              margin: MediaQuery.of(context).size.width > 500
                  ? EdgeInsets.all(10)
                  : EdgeInsets.all(5),
              height: MediaQuery.of(context).size.width > 500 ? 60 : 40,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: MediaQuery.of(context).size.width > 500
                    ? const EdgeInsets.only(right: 20, left: 20, top: 5)
                    : const EdgeInsets.only(right: 10, left: 10),
                child: TextFormField(
                  controller: name,
                  textAlignVertical: TextAlignVertical.center,
                  keyboardAppearance: Brightness.dark,
                  cursorColor: Colors.white,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width > 500 ? 18 : 10,
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
                      fontSize:
                          MediaQuery.of(context).size.width > 500 ? 18 : 14,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: MediaQuery.of(context).size.width > 500
                  ? EdgeInsets.all(10)
                  : EdgeInsets.all(5),
              height: MediaQuery.of(context).size.width > 500 ? 60 : 40,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: MediaQuery.of(context).size.width > 500
                    ? const EdgeInsets.only(right: 20, left: 20, top: 5)
                    : const EdgeInsets.only(right: 10, left: 10),
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
                    fontSize: MediaQuery.of(context).size.width > 500 ? 18 : 10,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Subject",
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize:
                          MediaQuery.of(context).size.width > 500 ? 18 : 14,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width > 500 ? 250 : 150,
              child: Container(
                margin: MediaQuery.of(context).size.width > 500
                    ? EdgeInsets.all(10)
                    : EdgeInsets.all(5),
                height: MediaQuery.of(context).size.width > 500 ? 60 : 40,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: MediaQuery.of(context).size.width > 500
                          ? const EdgeInsets.only(right: 20, left: 20, top: 5)
                          : const EdgeInsets.only(right: 10, left: 10, top: 10),
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
                          fontSize:
                              MediaQuery.of(context).size.width > 500 ? 18 : 10,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Description",
                          hintStyle: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: MediaQuery.of(context).size.width > 500
                                ? 18
                                : 14,
                          ),
                        ),
                      ),
                    ),
                    Send(
                      _formKey,
                      name,
                      subject,
                      description,
                    ),
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
