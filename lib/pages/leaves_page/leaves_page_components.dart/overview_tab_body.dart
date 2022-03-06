import 'package:employee_app/common_widgets/background_grid_lines.dart';
import 'package:employee_app/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'leaves_info_widget.dart';

class OverviewTabBody extends StatelessWidget {
  OverviewTabBody({Key? key}) : super(key: key);
  List<String> currentvalue = ['6', '10', '15', '2', '3', '18'];

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.symmetric(horizontal: 22),
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
              spacing: 10,
              runSpacing: 10,
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
          const SizedBox(
            height: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey[100],
            child: ListView.separated(
                padding: const EdgeInsets.all(12),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return FAProgressBar(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4),
                      topRight: Radius.circular(4),
                    ),
                    verticalDirection: VerticalDirection.up,
                    direction: Axis.vertical,
                    displayText: '',
                    currentValue: int.parse(currentvalue[index]),
                    maxValue: 30,
                    backgroundColor: Colors.transparent,
                    progressColor: AppColors.progressBarColor,
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 20,
                  );
                },
                itemCount: currentvalue.length),
          ),
        ],
      ),
    );
  }
}
