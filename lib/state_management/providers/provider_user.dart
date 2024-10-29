import 'package:flutter/material.dart';

class ProviderUser extends ChangeNotifier {
  String nama = '';

  get getNama => nama;

  void setNama(String namaBaru) {
    nama = namaBaru;
    notifyListeners();
  }
}
