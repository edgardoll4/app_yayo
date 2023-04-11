import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final boxDecoration = BoxDecoration(
      gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 0, 3, 55),
            Color.fromARGB(255, 8, 8, 17),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2, 0.8]));
  Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background gradient blue dark
        Container(
          decoration: boxDecoration,
        ),
        // Box pink
        Positioned(top: -100, right: 50, child: _PinkBox())
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(224, 50, 230, 1),
              Color.fromRGBO(240, 30, 163, 1)
            ])),
      ),
    );
  }
}
