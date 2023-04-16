import 'dart:math';

import 'package:app_yayo/constants/colors_theme.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final boxDecoration = BoxDecoration(
      gradient: LinearGradient(
          colors: [
            ColorsThemeDefaul().colorBgPrimary,
            ColorsThemeDefaul().colorBgPrimaryDark,
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
        const Positioned(top: -100, right: 50, child: _PinkBox())
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
            gradient: const LinearGradient(colors: [
              Color.fromRGBO(50, 122, 230, 1),
              Color.fromRGBO(30, 51, 240, 1)
            ])),
      ),
    );
  }
}
