import 'package:flutter/material.dart';
import './leaves_page_components.dart';
import 'package:provider/provider.dart';
import 'package:employee_app/models/leaves.dart';

import 'package:employee_app/provider/app_view_model.dart';

class HolidaysTabBody extends StatelessWidget {
  const HolidaysTabBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppViewModel viewModel = Provider.of<AppViewModel>(context);
    return StreamBuilder<List<Leaves>>(
        stream: viewModel.getIndiaLeaves(),
        builder: (context, snapshot) {
		
		print(snapshot.hasData);
          return ListView.separated(
              itemCount: 4,
              shrinkWrap: true,
              padding: const EdgeInsets.only(left: 24, top: 4, right: 24),
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 10);
              },
              itemBuilder: (BuildContext context, int index) {
                return Column(children: [
                  Text(
                    'August 2021',
                    style: AppFonts.mediumTextBB,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  OneDayLeaveInfoWidget(
                    leaveTitle: 'Independence Day',
                    leaveReason: 'National Holiday ',
                    leaveDate:
                        DateTime.fromMillisecondsSinceEpoch(1644645180000),
                    borderColor:
                        ContainerColors.holidayWidgetGolden.withOpacity(0.4),
                    innerShade: Colors.white.withOpacity(0.3),
                    outerShade:
                        ContainerColors.holidayWidgetGolden.withOpacity(0.84),
                    textColor: TextColors.holidayWidgetGoldenText,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ]);
              });
        }

        /*
        Text(
          'December 2021',
          style: AppFonts.mediumTextBB,
        ),
        const SizedBox(
          height: 20,
        ),
        MultipleDaysLeaveInfoWidget(
          leaveTitle: 'Christmas Vacation',
          leaveReason:
              'On the occasion of Christmas, Surfboard India will be closed for 12 days.',
          fromDate: DateTime.fromMillisecondsSinceEpoch(1671688380000),
          toDate: DateTime.fromMillisecondsSinceEpoch(1672306411000),
          borderColor: BorderColor.holidayGolden,
          dividerColor: DividerColors.holidayGolden,
          innerShade: Colors.white.withOpacity(0.3),
          outerShade: ContainerColors.holidayWidgetGolden.withOpacity(0.82),
          textColor: TextColors.holidayWidgetGoldenText,
        ),
	*/

        );
  }
}
