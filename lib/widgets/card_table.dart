import 'dart:ui';

import 'package:app_yayo/constants/colors_theme.dart';
import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
            tipoIcon: Icons.pie_chart_sharp,
            textIcon: 'Geneal',
          ),
          _SingleCard(
            tipoIcon: Icons.verified_user_sharp,
            textIcon: 'Users',
            colorIcon: Colors.deepPurpleAccent,
          )
        ]),
        TableRow(children: [
          _SingleCard(
            tipoIcon: Icons.movie_creation_sharp,
            colorIcon: Color.fromARGB(255, 209, 129, 2),
            textIcon: 'Movie',
          ),
          _SingleCard(
            tipoIcon: Icons.card_travel_sharp,
            textIcon: 'Card',
            colorIcon: Color.fromARGB(255, 26, 125, 1),
          )
        ]),
        TableRow(children: [
          _SingleCard(
            tipoIcon: Icons.calendar_today_sharp,
            colorIcon: Color.fromARGB(255, 235, 5, 132),
            textIcon: 'Calendar',
          ),
          _SingleCard(
            tipoIcon: Icons.airplane_ticket_sharp,
            textIcon: 'Travel',
            colorIcon: Color.fromARGB(255, 98, 1, 150),
          )
        ]),
        TableRow(children: [
          _SingleCard(
            tipoIcon: Icons.computer_sharp,
            colorIcon: Color.fromARGB(255, 11, 52, 232),
            textIcon: 'Computer',
          ),
          _SingleCard(
            tipoIcon: Icons.attach_money_sharp,
            textIcon: 'Money',
            colorIcon: Color.fromARGB(255, 14, 179, 53),
          )
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final String textIcon;
  final IconData tipoIcon;
  final Color colorIcon;
  const _SingleCard(
      {super.key,
      this.textIcon = 'Texto',
      required this.tipoIcon,
      this.colorIcon = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: colorIcon,
          child: Icon(
            tipoIcon,
            size: 35,
            color: Colors.white,
          ),
          radius: 50,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '$textIcon',
          style: TextStyle(color: colorIcon, fontSize: 18),
        )
      ],
    ));
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;
  const _CardBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: ColorsThemeDefaul().colorBgDark,
                borderRadius: BorderRadius.circular(20)),
            child: this.child,
          ),
        ),
      ),
    );
  }
}
