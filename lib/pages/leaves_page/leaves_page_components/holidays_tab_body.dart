import 'package:flutter/material.dart';
import './leaves_page_components.dart';

class HolidaysTabBody extends StatelessWidget {
  const HolidaysTabBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(left: 24, top: 4, right: 24),
      children: [
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
          leaveDate: DateTime.fromMillisecondsSinceEpoch(1644645180000),
          borderColor: ContainerColors.holidayWidgetGolden.withOpacity(0.4),
          innerShade: Colors.white.withOpacity(0.3),
          outerShade: ContainerColors.holidayWidgetGolden.withOpacity(0.84),
          textColor: TextColors.holidayWidgetGoldenText,
        ),
        const SizedBox(
          height: 20,
        ),
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
      ],
    );
  }
}
