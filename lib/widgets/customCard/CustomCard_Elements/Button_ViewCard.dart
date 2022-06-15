// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import '../../../screens/cardPage.dart';

class Button_ViewCard extends StatelessWidget {
  const Button_ViewCard(this.valid, this.user_first_name, this.user_second_name,
      this.Valid_until_date,
      {Key key})
      : super(key: key);
  final String user_first_name;
  final String user_second_name;
  final String Valid_until_date;

  final bool valid;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SizedBox(
      width: 190,
      height: 50,
      child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CardPage(valid, user_first_name,
                    user_second_name, Valid_until_date)));
          },
          child: valid == true
              ? Text("VIEW RAILCARD")
              : Text("RENEW RAILCARD"), // Checks for if the card is still valid
          style: ButtonStyle(
            elevation: null,
            shadowColor: null,
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0),
                    side: valid == true
                        ? BorderSide(width: 3.0, color: Colors.white)
                        : BorderSide(
                            width: 3.0,
                            color: Color.fromARGB(255, 112, 110, 110)))),
            backgroundColor: valid == true
                ? MaterialStateProperty.all(Color.fromARGB(255, 243, 96, 42))
                : MaterialStateProperty.all(Color.fromARGB(255, 232, 214, 208)),
          )),
    ));
  }
}
