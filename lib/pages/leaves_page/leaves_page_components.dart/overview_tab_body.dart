import 'package:employee_app/styles/styles.dart';
import 'package:flutter/material.dart';
import 'leaves_info_widget.dart';

class OverviewTabBody extends StatelessWidget {
  const OverviewTabBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      //color: Colors.red,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          Text(
            'Statistics',
            style: AppFonts.mediumTextBB,
          ),
          const SizedBox(
            height: 20,
          ),
          Flexible(
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                LeavesInfoWidget(
                  innerShadow: Colors.white.withOpacity(0.7),
                  leaveCount: '0',
                  leaveStatus: 'Available',
                  outerShadow: ContainerColors.yellowShade.withOpacity(0.95),
                  assetInfo: 'assets/available_leaves.png',
                ),
                LeavesInfoWidget(
                  innerShadow: Colors.white.withOpacity(0.7),
                  leaveCount: '39',
                  leaveStatus: 'Taken',
                  outerShadow: ContainerColors.pinkShade.withOpacity(0.7),
                  assetInfo: 'assets/taken_leaves.png',
                ),
                LeavesInfoWidget(
                  innerShadow: Colors.white.withOpacity(0.7),
                  leaveCount: '9',
                  leaveStatus: 'Unpaid leaves',
                  outerShadow: ContainerColors.surfblue.withOpacity(0.7),
                  assetInfo: 'assets/unpaid_leaves.png',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Leave trend',
            style: AppFonts.mediumTextBB,
          ),
        ],
      ),
    );
  }
}
