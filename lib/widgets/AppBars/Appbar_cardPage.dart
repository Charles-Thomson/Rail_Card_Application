// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';

class AppBar_CardPage extends StatelessWidget {
  const AppBar_CardPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: AppBar(
      backgroundColor: Color.fromARGB(255, 243, 96, 42),
      title: Row(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(50, 10, 0, 0),
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "16-25",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold)),
              TextSpan(
                  text: " RailCard",
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 24,
                      fontWeight: FontWeight.bold))
            ])),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(45, 10, 0, 0),
            child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.info_outline),
                color: Colors.white,
                iconSize: 33),
          )
        ],
      ),
      elevation: 0,
    ));
  }
}
