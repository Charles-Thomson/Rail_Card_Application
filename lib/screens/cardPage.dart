// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:rail_card_app/widgets/AppBars/Appbar_cardPage.dart';
import 'package:rail_card_app/widgets/customCard/CustomCard_Elements/Text_Issued.dart';
import 'package:rail_card_app/widgets/customCard/CustomCard_Elements/Text_UserID.dart';
import 'package:rail_card_app/widgets/customCard/CustomCard_Elements/Text_ValidUntil.dart';
import 'package:rail_card_app/widgets/Animation/Animated_rail_logo.dart';

import '../widgets/customCard/CustomCard_Elements/Text_IssuedTo.dart';

class CardPage extends StatelessWidget {
  const CardPage(
    this.valid,
    this.user_first_name,
    this.user_second_name,
    this.Valid_until_date,
  );

  final String user_first_name;
  final String user_second_name;
  final String Valid_until_date;
  final bool valid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50), child: AppBar_CardPage()),
        body: Container(
            color: Color.fromARGB(255, 243, 96, 42),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(110, 50, 0, 0),
                        child: Container(
                            height: 200,
                            width: 180,
                            child: Image.asset(
                                'lib/assets/images/blank_profile.png')))
                  ],
                ),
                Row(children: [
                  Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 10, 0, 0),
                      child: Text_IssuedTo(
                          valid, user_first_name, user_second_name)),
                  Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(80, 10, 0, 0),
                      child: Text_Issued())
                ]),
                Row(
                  children: [
                    Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 10, 0, 0),
                        child: Text_ValidUntil(valid, Valid_until_date))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 80, 0, 0),
                        child: Container(
                            height: 120,
                            width: 120,
                            child: Image.asset(
                                'lib/assets/images/example_QR_code.png'))),
                    Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 80, 0, 0),
                        child: Container(
                            height: 130,
                            width: 130,
                            child: Animated_rail_logo()))
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 30, 0, 0),
                      child: Text_UserID(valid),
                    )
                  ],
                )
              ],
            )));
  }
}
