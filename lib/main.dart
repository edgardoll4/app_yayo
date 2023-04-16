import 'package:flutter/material.dart';
import 'package:app_yayo/screens/home_screen.dart';
import 'package:app_yayo/screens/scroll_design.dart';
import 'package:app_yayo/screens/basic_design.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle
        .light); // opciones para la bara de estado y notificaciones del telefono

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          // colorSchemeSeed: Colors.red,
          colorScheme: const ColorScheme.light(),
        ),
        title: 'YaYo App',
        initialRoute: 'homa_screen',
        routes: {
          'basic_design': (BuildContext context) => const BasicDesignScreen(),
          'scroll_screen': (BuildContext context) => ScrollScreen(),
          'homa_screen': (BuildContext context) => const HomeScreen(),
        });
  }
}
