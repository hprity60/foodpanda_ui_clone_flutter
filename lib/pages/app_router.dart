import 'package:flutter/material.dart';
import 'package:food_panda_clone/pages/home_page.dart';
import 'package:food_panda_clone/pages/splash_page.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case SplashPage.id:
        //  final args = routeSettings.arguments as ArgModel;
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case HomePage.id:
        return MaterialPageRoute(builder: (_) => const HomePage());
    }
    return null;
  }
}
