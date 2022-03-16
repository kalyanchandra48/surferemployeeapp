import 'package:flutter/material.dart';
import 'package:googleapis/searchconsole/v1.dart';

class MyCart with ChangeNotifier {
  List<Item> _selectedItem = [];
  List<Item> get selectedItem => _selectedItem;
  set selecteditemState(List<Item> newselectedItem) {
    _selectedItem = newselectedItem;
    notifyListeners();
  }
}
