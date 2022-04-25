import 'package:employee_app/models/leaves.dart';
import 'package:employee_app/provider/app_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'leaves_page_components.dart';
import 'package:intl/intl.dart';

class TakenLeavesTabBody extends StatelessWidget {
  const TakenLeavesTabBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppViewModel viewModel = Provider.of<AppViewModel>(context);
    return StreamBuilder<List<Leaves>>(
        stream: viewModel.getuserLeaves(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('No Data'),
            );
          }
          if (!snapshot.hasData) {
            return const CupertinoActivityIndicator();
          }
          if (snapshot.hasData) {
            return ListView.separated(
                shrinkWrap: true,
                reverse: true,
                itemCount: snapshot.data!.length,
                padding: const EdgeInsets.only(
                    left: 24, top: 0, right: 24, bottom: 40),
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(height: 10);
                },
                itemBuilder: (BuildContext context, int index) {
                  String monthname = DateFormat('MMMM yyyy')
                      .format(snapshot.data![index].toDate);
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      (snapshot.data![index].toDate ==
                              snapshot.data![index].toDate)
                          ? Text(monthname, style: AppFonts.foodNameHeader)
                          : const SizedBox.shrink(),
                      const SizedBox(
                        height: 20,
                      ),
                      OneDayLeaveInfoWidget(
                        leaveDate: snapshot.data![index].toDate,
                        leaveReason: snapshot.data![index].description,
                        leaveStatus: 'Paid',
                        leaveTitle: snapshot.data![index].title,
                        borderColor: ContainerColors.surfblue.withOpacity(0.35),
                        outerShade: ContainerColors.surfblue.withOpacity(0.27),
                        innerShade: Colors.white.withOpacity(0.4),
                        textColor: TextColors.surfblue,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // MultipleDaysLeaveInfoWidget(
                      //   fromDate:
                      //       DateTime.fromMillisecondsSinceEpoch(1643867580000),
                      //   leaveReason:
                      //       'My cousin brother is getting married on this day',
                      //   leavestatus: 'Paid',
                      //   leaveTitle: 'Wedding',
                      //   toDate:
                      //       DateTime.fromMillisecondsSinceEpoch(1644645180000),
                      //   borderColor: ContainerColors.surfblue.withOpacity(0.3),
                      //   innerShade: Colors.white.withOpacity(0.35),
                      //   outerShade: ContainerColors.surfblue.withOpacity(0.27),
                      //   dividerColor: DividerColors.takenLeavesBlue,
                      //   textColor: TextColors.surfblue,
                      // ),
                    ],
                  );
                });
          }
          return const CupertinoActivityIndicator();
        });
  }
}
