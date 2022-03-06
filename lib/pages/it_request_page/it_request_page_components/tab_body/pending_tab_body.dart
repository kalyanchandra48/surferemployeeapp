import 'package:employee_app/models/it_request_status.dart';
import 'package:employee_app/styles/styles.dart';
import 'package:flutter/material.dart';

import '../it_request_info_widget.dart';

class PendingTabBody extends StatelessWidget {
  const PendingTabBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(24),
      children: [
        Text(
          'September 2021',
          style: AppFonts.mediumTextBB,
        ),
        const SizedBox(
          height: 15,
        ),
        const ITRequestInfoWidget(
          assigneeName: 'Askin John Samuel',
          requestTitle: 'Access Gitlab',
          requestStatus: ITRequestStatus.MORE_INFO,
        ),
        const SizedBox(
          height: 15,
        ),
        const ITRequestInfoWidget(
          assigneeName: 'Asaph Abraham',
          requestTitle: 'Ios Developer Account',
          requestStatus: ITRequestStatus.PENDING,
        ),
      ],
    );
  }
}
