import 'package:employee_app/models/food/item.dart';
import 'package:flutter/material.dart';

class MyCart with ChangeNotifier {
  List<Item> _selectedItem = [];
  List<Item> get selectedItem => _selectedItem;
  set selecteditemState(List<Item> newselectedItem) {
    _selectedItem = newselectedItem;
    notifyListeners();
  }
}
