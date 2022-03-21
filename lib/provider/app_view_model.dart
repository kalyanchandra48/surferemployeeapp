import 'package:employee_app/pages/leaves_page/leaves_page_components/leaves_page_components.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

class AppViewModel extends ViewModel {
  AppViewModel(this.isar);
  // late TakenLeavesTabBody takenLeave = TakenLeavesTabBody(isar);
  Isar? isar;
}

abstract class ViewModel extends ChangeNotifier {
  void dispose();
}
