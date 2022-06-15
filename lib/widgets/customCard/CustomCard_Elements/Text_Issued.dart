// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Text_Issued extends StatelessWidget {
  const Text_Issued({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: RichText(
            text: TextSpan(children: [
      TextSpan(
          text: ("ISSUED\n"),
          style: TextStyle(
              color: Color.fromARGB(255, 205, 204, 204),
              fontSize: 14,
              fontWeight: FontWeight.bold)),
      TextSpan(
          text: ("Onine"),
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold))
    ])));
  }
}
