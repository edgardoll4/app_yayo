import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_outlined),
          label: 'Calendario',
        ),
        const BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outline_outlined), label: 'Chart'),
        const BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle_outlined), label: 'Users'),
      ],
      onTap: (value) {
        switch (value) {
          case 0:
            {
              print(value);

              // GoRouter.of(context).namedLocation('basic');
              // GoRouter.of(context).pushNamed('basic');
              GoRouter.of(context).goNamed('home');
              setState(() {
                _currentIndex = value;
              });
              break;
            }
          case 1:
            {
              print(value);
              GoRouter.of(context).goNamed('basic');
              setState(() {
                _currentIndex = value;
              });
              break;
            }
          case 2:
            {
              print(value);
              GoRouter.of(context).goNamed('scroll');
              setState(() {
                _currentIndex = value;
              });
              break;
            }
          case 3:
            {
              print('No valido');
              break;
            }
          default:
            {
              print('Default');
            }
        }
      },
      selectedItemColor: Colors.pink,
      backgroundColor: Theme.of(context)
          .scaffoldBackgroundColor, //const Color.fromRGBO(50, 58, 80, 1),
      unselectedItemColor: const Color.fromRGBO(110, 120, 160, 1),
      currentIndex: _currentIndex,
      elevation: 0,
      showSelectedLabels:
          false, // Opcion para mostra label del item seleccionado
      showUnselectedLabels:
          false, // Opcion para mostra label del item no seleccionado
    );
  }
}
