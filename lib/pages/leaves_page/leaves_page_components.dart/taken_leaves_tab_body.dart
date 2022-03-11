import 'package:employee_app/models/leaves.dart';
import 'package:employee_app/services/calendar_events.dart';
import 'package:employee_app/services/isar.dart';
import 'package:employee_app/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

import 'multiple_days_leave_info_widget.dart';
import 'one_day_leave_info_widget.dart';

class TakenLeavesTabBody extends StatelessWidget {
  const TakenLeavesTabBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(left: 24, top: 4, right: 24),
      children: [
        Text('August 2021', style: AppFonts.mediumTextBB),
        const SizedBox(
          height: 20,
        ),
        OneDayLeaveInfoWidget(
          leaveDate: DateTime.fromMillisecondsSinceEpoch(1644990780),
          leaveReason: 'I am stuck with Covid',
          leaveStatus: 'Paid',
          leaveTitle: 'COVID Attack',
          borderColor: ContainerColors.surfblue.withOpacity(0.35),
          outerShade: ContainerColors.surfblue.withOpacity(0.27),
          innerShade: Colors.white.withOpacity(0.4),
          textColor: TextColors.surfblue,
        ),
        const SizedBox(
          height: 20,
        ),
        MultipleDaysLeaveInfoWidget(
          fromDate: DateTime.fromMillisecondsSinceEpoch(1643867580000),
          leaveReason: 'My cousin brother is getting married on this day',
          leavestatus: 'Paid',
          leaveTitle: 'Wedding',
          toDate: DateTime.fromMillisecondsSinceEpoch(1644645180000),
          borderColor: ContainerColors.surfblue.withOpacity(0.3),
          innerShade: Colors.white.withOpacity(0.35),
          outerShade: ContainerColors.surfblue.withOpacity(0.27),
          dividerColor: DividerColors.takenLeavesBlue,
          textColor: TextColors.surfblue,
        ),
      ],
    );
  }
}
