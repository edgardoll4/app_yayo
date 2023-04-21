import 'package:app_yayo/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:app_yayo/screens/home_screen.dart';
import 'package:app_yayo/screens/scroll_design.dart';
import 'package:app_yayo/screens/basic_design.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
          path: '/',
          name: 'home',
          builder: (BuildContext context, GoRouterState state) {
            return const HomeScreen();
          }),
      GoRoute(
        path: '/scroll_screen',
        name: 'scroll',
        builder: (BuildContext context, GoRouterState state) {
          return ScrollScreen();
        },
      ),
      GoRoute(
        path: '/basic_design',
        name: 'basic',
        builder: (BuildContext context, GoRouterState state) {
          return const BasicDesignScreen();
        },
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle
        .light); // opciones para la bara de estado y notificaciones del telefono

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectColor: 7).theme(),
      title: 'YaYo App',
      routerConfig: router,
    );
  }
}
