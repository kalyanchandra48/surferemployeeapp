import 'package:flutter/material.dart';
import 'leaves_page_components.dart';
import 'package:isar/isar.dart';
import 'package:employee_app/services/calendar_events.dart';

class TakenLeavesTabBody extends StatelessWidget {
  const TakenLeavesTabBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Leaves>>(
        stream: getLeaves,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active ||
              snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return const Text('Error');
            } else if (snapshot.hasData) {
              return ListView.separated(
                  shrinkWrap: true,
                  itemCount: 3,
                  padding: const EdgeInsets.only(
                      left: 24, top: 4, right: 24, bottom: 40),
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(height: 10);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('August 2021', style: AppFonts.mediumTextBB),
                        const SizedBox(
                          height: 20,
                        ),
                        OneDayLeaveInfoWidget(
                          leaveDate:
                              DateTime.fromMillisecondsSinceEpoch(1644990780),
                          leaveReason: 'I am stuck with Covid',
                          leaveStatus: 'Paid',
                          leaveTitle: 'COVID Attack',
                          borderColor:
                              ContainerColors.surfblue.withOpacity(0.35),
                          outerShade:
                              ContainerColors.surfblue.withOpacity(0.27),
                          innerShade: Colors.white.withOpacity(0.4),
                          textColor: TextColors.surfblue,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        MultipleDaysLeaveInfoWidget(
                          fromDate: DateTime.fromMillisecondsSinceEpoch(
                              1643867580000),
                          leaveReason:
                              'My cousin brother is getting married on this day',
                          leavestatus: 'Paid',
                          leaveTitle: 'Wedding',
                          toDate: DateTime.fromMillisecondsSinceEpoch(
                              1644645180000),
                          borderColor:
                              ContainerColors.surfblue.withOpacity(0.3),
                          innerShade: Colors.white.withOpacity(0.35),
                          outerShade:
                              ContainerColors.surfblue.withOpacity(0.27),
                          dividerColor: DividerColors.takenLeavesBlue,
                          textColor: TextColors.surfblue,
                        ),
                      ],
                    );
                  });
            }
          }
        });
  }
}
