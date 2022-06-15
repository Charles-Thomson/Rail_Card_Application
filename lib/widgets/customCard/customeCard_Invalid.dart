// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';

import 'CustomCard_Elements/Button_ViewCard.dart';
import 'CustomCard_Elements/Text_ValidUntil.dart';
import 'CustomCard_Elements/Text_IssuedTo.dart';
import 'CustomCard_Elements/Text_TitleText.dart';
import 'CustomCard_Elements/Text_UserID.dart';
import 'CustomCard_Elements/Text_CardStatus.dart';

class customCard_Invalid extends StatelessWidget {
  const customCard_Invalid(
    this.Valid_until_date,
    this.user_first_name,
    this.user_second_name, {
    Key key,
    @required this.context,
  }) : super(key: key);

  final BuildContext context;

  final String Valid_until_date;
  final String user_first_name;
  final String user_second_name;
  final bool valid = false;

  @override
  Widget build(BuildContext context) => Container(
        width: 300,
        height: 500,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2),
          ),
          color: Color.fromARGB(255, 232, 214, 208),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(height: 70, child: Text_TitleText(valid)),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                      child: Text_IssuedTo(
                          valid, user_first_name, user_second_name)),
                  Container(child: Text_CardStatus()),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(child: Text_ValidUntil(valid, Valid_until_date)),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(50, 110, 0, 0),
                    child: Button_ViewCard(valid, user_first_name,
                        user_second_name, Valid_until_date),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 20, 0, 0),
                    child: Text_UserID(valid),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(33, 12, 0, 0),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.info_outlined),
                      color: Colors.grey,
                      iconSize: 30,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
}
