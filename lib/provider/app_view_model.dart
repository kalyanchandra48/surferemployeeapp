import 'package:employee_app/pages/leaves_page/leaves_page_components/leaves_page_components.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

import '../models/leaves.dart';

class AppViewModel extends ViewModel {
  AppViewModel(this.isar);
  Isar isar;

  Stream<dynamic> getuserLeaves() async* {
    final userLeaves = await isar.leavess
        .buildQuery(
          filter: FilterGroup.and([
            FilterCondition(
              type: ConditionType.contains,
              property: 'category',
              value: 'Vacation - India',
            ),
          ]),
        )
        .findAll();
    yield userLeaves;
  }

  Stream<List<Leaves>> getIndiaLeaves() async* {
    final hol = await isar.leavess
      ..buildQuery(
        filter: FilterGroup.and([
          FilterCondition(
            type: ConditionType.contains,
            property: 'category',
            value: 'Holidays in India',
          ),
        ]),
      ).findAll();
    yield hol as List<Leaves>;
  }
}

abstract class ViewModel extends ChangeNotifier {
  void dispose();
}
