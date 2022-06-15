// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';

class Text_IssuedTo extends StatelessWidget {
  const Text_IssuedTo(this.valid, this.user_first_name, this.user_second_name,
      {Key key})
      : super(key: key);

  final String user_first_name;
  final String user_second_name;
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
              text: "ISSUED TO\n",
              style: TextStyle(
                  color: Color.fromARGB(255, 240, 166, 143),
                  fontSize: 12,
                  fontWeight: FontWeight.bold)),
          TextSpan(
              text: (user_first_name + "\n" + user_second_name),
              style: TextStyle(
                color: valid == true ? Colors.white : Colors.grey,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
        ])),
      ),
    );
  }
}
