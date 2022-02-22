import 'package:flutter/material.dart';
import './tab_body_components.dart';

class ApprovedTabBody extends StatelessWidget {
  const ApprovedTabBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(24),
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
          requestStatus: ITRequestStatus.APPROVED,
        ),
      ],
    );
  }
}
