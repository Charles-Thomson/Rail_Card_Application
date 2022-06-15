// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Text_CardStatus extends StatelessWidget {
  const Text_CardStatus({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(40, 35, 0, 0),
          child: RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "CARD  STATUS\n",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                )),
            TextSpan(
                text: "EXPIRED",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 78, 77, 77),
                ))
          ]))),
    );
  }
}
