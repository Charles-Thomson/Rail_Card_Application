// ignore_for_file: camel_case_types, unnecessary_import

import 'package:rainbow_color/rainbow_color.dart';

import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class Animated_rail_logo extends StatefulWidget {
  const Animated_rail_logo({Key key}) : super(key: key);

  @override
  State<Animated_rail_logo> createState() => _Animated_rail_logoState();
}

class _Animated_rail_logoState extends State<Animated_rail_logo>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<Color> _color;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 5))
          ..repeat(reverse: true);

    _color =
        RainbowColorTween([Colors.lightBlue, Colors.red, Colors.orangeAccent])
            .animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: AnimatedBuilder(
            animation: _color,
            builder: (BuildContext _, Widget __) {
              return Container(
                  child: Image.asset(
                'lib/assets/images/national_rail_logo-removebg-preview.png',
                color: _color.value,
              ));
            }));
  }
}
