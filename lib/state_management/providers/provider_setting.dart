import 'package:flutter/material.dart';

class ProviderSetting extends ChangeNotifier {
  Color appBarColor = Colors.blue;

  get getAppBarColor => appBarColor;

  void setAppBarColor(Color newAppBarColor) {
    appBarColor = newAppBarColor;
    notifyListeners();
  }
}
