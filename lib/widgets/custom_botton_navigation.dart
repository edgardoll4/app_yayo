import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined), label: 'Calendario'),
        BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outline_outlined), label: 'Chart'),
        BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle_outlined), label: 'Users'),
      ],
      selectedItemColor: Colors.pink,
      backgroundColor: Color.fromRGBO(50, 58, 80, 1),
      unselectedItemColor: Color.fromRGBO(110, 120, 160, 1),
      currentIndex: 1,
      showSelectedLabels:
          false, // Opcion para mostra label del item seleccionado
      showUnselectedLabels:
          false, // Opcion para mostra label del item no seleccionado
    );
  }
}
