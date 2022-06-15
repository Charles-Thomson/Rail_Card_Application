// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Text_UserID extends StatelessWidget {
  const Text_UserID(this.valid, {Key key}) : super(key: key);

  final bool valid;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: RichText(
            text: TextSpan(children: [
      TextSpan(
          text: "No. 08ZMA2300857280",
          style: TextStyle(
              color: valid == true ? Colors.white : Colors.grey,
              fontSize: 18,
              fontWeight: FontWeight.bold))
    ])));
  }
}
