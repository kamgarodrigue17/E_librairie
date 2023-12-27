import 'package:flutter/material.dart';

class TabContrller extends ChangeNotifier {
  int _item = 0;
  int get item => _item;
  setItem(index) {
    this._item = index;
    notifyListeners();
  }
}
