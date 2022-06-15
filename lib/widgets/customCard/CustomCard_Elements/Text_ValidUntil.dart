// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';

class Text_ValidUntil extends StatelessWidget {
  const Text_ValidUntil(this.valid, this.Valid_until_date, {Key key})
      : super(key: key);

  final String Valid_until_date;
  final bool valid;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(15, 35, 0, 0),
        child: RichText(
            text: TextSpan(children: [
          TextSpan(
              text: "VALID UNTIL\n",
              style: TextStyle(
                  color: valid == true
                      ? Color.fromARGB(255, 240, 166, 143)
                      : Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.bold)),
          TextSpan(
              text: (Valid_until_date),
              style: TextStyle(
                  color: valid == true ? Colors.white : Colors.grey,
                  fontSize: 23,
                  fontWeight: FontWeight.bold))
        ])),
      ),
    );
  }
}
