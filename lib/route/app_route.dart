import 'package:flutter/material.dart';
// import 'package:food_recipe/feature/get_started/presentation/get_started_screen.dart';
// import 'package:food_recipe/feature/home/presentation/home_screen.dart';
import 'package:recipe_app/views/home.dart';
import 'package:recipe_app/route/app_route_name.dart';
import 'package:recipe_app/get_started.dart';
import 'package:recipe_app/main.dart';

class AppRoute {
  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteName.getStarted:
        return MaterialPageRoute(
          builder: (_) => GetStartedScreen(),
          settings: settings,
        );

      case AppRouteName.home:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) =>  Home(),
          transitionDuration: const Duration(milliseconds: 400),
          transitionsBuilder: (_, animation, __, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
    }

    return null;
  }
}
