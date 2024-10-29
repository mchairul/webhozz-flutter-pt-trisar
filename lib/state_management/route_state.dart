import 'package:belajar/state_management/screens/home.dart';
import 'package:belajar/state_management/screens/login.dart';
import 'package:belajar/state_management/screens/profile.dart';
import 'package:belajar/state_management/screens/setting.dart';
import 'package:flutter/material.dart';

class RouteState {
  static const String screenLogin = '/';
  static const String screenHome = '/home';
  static const String screenSetting = '/setting';
  static const String screenProfile = '/profile';
  static Route<dynamic> stateRoute(RouteSettings settings) {
    switch(settings.name) {
      case screenLogin:
        return MaterialPageRoute(builder: (context) => const Login());
      case screenHome:
        return MaterialPageRoute(builder: (context) => const Home());
      case screenSetting:
        return MaterialPageRoute(builder: (context) => const Setting());
      case screenProfile:
        return MaterialPageRoute(builder: (context) => const Profile());
      default:
        throw const FormatException('Not Found');
    }
  }
}
