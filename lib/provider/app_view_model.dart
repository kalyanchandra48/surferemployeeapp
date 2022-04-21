import 'package:employee_app/pages/leaves_page/leaves_page_components/leaves_page_components.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

import '../models/leaves.dart';

class AppViewModel extends ViewModel {
  AppViewModel(this.isar);
  Isar isar;

  Stream<List<Leaves>> getuserLeaves() {
    Query<Leaves> leavesQuery = isar.leavess.buildQuery(
      filter: FilterGroup.and([
        FilterCondition(
          type: ConditionType.contains,
          property: 'category',
          value: 'Vacation - India',
        ),
      ]),
    );
    Stream<List<Leaves>> userLeaves = leavesQuery.watch(initialReturn: true);
    return userLeaves;
  }

  Stream<List<Leaves>> getIndiaLeaves() {
    Query<Leaves> holQuery = isar.leavess.buildQuery(
      filter: FilterGroup.and([
        FilterCondition(
          type: ConditionType.contains,
          property: 'category',
          value: 'Holidays in India',
        ),
      ]),
    );
    Stream<List<Leaves>> hol = holQuery.watch(initialReturn: true);
    return hol;
  }
}

abstract class ViewModel extends ChangeNotifier {
  @override
  void dispose();
}
