import 'dart:math';

import 'package:app_yayo/config/theme/app_theme.dart';
import 'package:app_yayo/constants/colors_theme.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  Background({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final boxDecoration = BoxDecoration(
        gradient: LinearGradient(
            colors: [
              // Theme.of(context).primaryColor,
              // Theme.of(context).primaryColorDark,
              ColorsThemeDefaul().colorBgPrimary,
              ColorsThemeDefaul().colorBgPrimaryDark,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.2, 0.8]));
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
    final colors = Theme.of(context);

    return Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            gradient: LinearGradient(colors: [
              // colors.primaryColor,
              // colors.primaryColorDark,
              Color.fromRGBO(53, 126, 236, 0.692),
              Color.fromRGBO(41, 53, 165, 0.637)
            ])),
      ),
    );
  }
}
