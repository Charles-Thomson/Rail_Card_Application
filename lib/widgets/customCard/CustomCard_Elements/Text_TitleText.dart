// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';

class Text_TitleText extends StatelessWidget {
  const Text_TitleText(this.valid, {Key key}) : super(key: key);

  final bool valid;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                  text: "16-25",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: valid == true ? Colors.white : Colors.grey)),
              TextSpan(
                  text: " Railcard",
                  style: TextStyle(
                      color: valid == true ? Colors.amber : Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 22)),
            ],
          ),
        ),
      ),
    );
  }
}
