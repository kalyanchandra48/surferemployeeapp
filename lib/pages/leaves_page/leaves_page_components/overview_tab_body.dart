import 'package:flutter/material.dart';
import './leaves_page_components.dart';

class OverviewTabBody extends StatelessWidget {
  OverviewTabBody({Key? key}) : super(key: key);
  List<String> currentvalue = ['6', '10', '15', '2', '3', '18'];
  List<String> selectingYears = ['2021'];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        mainAxisSize: MainAxisSize.max,
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
          Row(
            children: [
              Text(
                'Leave trend',
                style: AppFonts.mediumTextBB,
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.only(left: 12, bottom: 8, top: 8),
                height: 31,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadii.radius8px,
                ),
                child: Text('2021'),
              ),
            ],
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
