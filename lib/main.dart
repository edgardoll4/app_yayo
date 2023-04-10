import 'package:app_yayo/screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:app_yayo/screens/basic_design.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'YaYo App',
        initialRoute: 'basic_design',
        routes: {
          'basic_design': (BuildContext context) => BasicDesignScreen(),
          'scroll_screen': (BuildContext context) => ScrollScreen()
        });
  }
}
