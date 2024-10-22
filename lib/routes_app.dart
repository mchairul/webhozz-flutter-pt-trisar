import 'package:belajar/home_route.dart';
import 'package:belajar/info.dart';
import 'package:belajar/profile.dart';
import 'package:belajar/simple_app/home.dart';
import 'package:belajar/state_page.dart';
import 'package:flutter/material.dart';

class RoutesApp {
  static const String pageHome = '/home';
  static const String pageProfile = '/profile';
  static const String pageInfo = '/info';
  static const String pageState = '/state';
  static const String pageSimpleApp = '/simple-app';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case pageHome:
        return MaterialPageRoute(
            builder: (context) => const HomeRoute()
        );
      case pageInfo:
        final arguments = settings.arguments as Info;
        return MaterialPageRoute(
            builder: (context) => Info(nama: arguments.nama, umur: arguments.umur)
        );
      case pageProfile:
        return MaterialPageRoute(
            builder: (context) => const Profile()
        );
      case pageState:
        return MaterialPageRoute(
          builder: (context) => const StatePage()
        );
      case pageSimpleApp:
        return MaterialPageRoute(
            builder: (context) => const SimpleAppHome()
        );
      default:
        throw const FormatException('Not Found');
    }
  }
}