import 'package:flutter/material.dart';

import '../widgets/customCard/customCard_Valid.dart';
import '../widgets/customCard/customeCard_Invalid.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, //Background Colour
        foregroundColor: Colors.black, // Text Colour
        title: Text(widget.title), // Title

        actions: [
          IconButton(
            onPressed: () {}, // Need to add actions
            icon: Icon(
              Icons.add,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 90,
            width: 400,
            height: 500,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              SizedBox(width: 45),
              // Data order for card - Valid Until, User first name, user second name, valid
              customCard_Valid("25 Mar 22", "charles", "Thomson",
                  context: context),
              SizedBox(width: 30),
              customCard_Invalid("25 Mar 20", "charles", "Thomson",
                  context: context),
              SizedBox(width: 50),
            ]),
          ),
        ],
      ),
    );
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
