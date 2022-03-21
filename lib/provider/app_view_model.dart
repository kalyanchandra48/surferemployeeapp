import 'package:employee_app/pages/leaves_page/leaves_page_components/leaves_page_components.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

import '../models/leaves.dart';

class AppViewModel extends ViewModel {
  AppViewModel(this.isar);
  // late TakenLeavesTabBody takenLeave = TakenLeavesTabBody(isar);
  Isar isar;
  Stream<List<Leaves>> getLeaves() async* {
    yield await isar.leavess.where().findAll();
  }
}

abstract class ViewModel extends ChangeNotifier {
  void dispose();
}
