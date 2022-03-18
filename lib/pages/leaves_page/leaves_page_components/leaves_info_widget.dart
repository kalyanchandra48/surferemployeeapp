import 'package:employee_app/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LeavesInfoWidget extends StatelessWidget {
  final Color innerShadow;
  final Color outerShadow;
  final String leaveCount;
  final String leaveStatus;
  final String assetInfo;
  const LeavesInfoWidget({
    required this.innerShadow,
    required this.leaveCount,
    required this.leaveStatus,
    required this.outerShadow,
    required this.assetInfo,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 0, left: 18, right: 10),
      height: MediaQuery.of(context).size.height / 7,
      width: MediaQuery.of(context).size.width / 2.4,
      decoration:
          BoxDecoration(borderRadius: BorderRadii.radius12px, boxShadow: [
        BoxShadow(
          color: outerShadow,
        ),
        BoxShadow(
          color: innerShadow,
          spreadRadius: -10,
          blurRadius: 32,
        ),
      ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  leaveCount,
                  style: AppFonts.appHeaderBlack,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  leaveStatus,
                  style: AppFonts.smallText12
                      .copyWith(color: TextColors.secondaryColor),
                ),
              ],
            ),
          ),
          Container(
              //color: Colors.red,
              height: 100,
              width: 80,
              child: Image.asset(assetInfo)),
        ],
      ),
      //width: MediaQuery.of(context).size.width,
    );
  }
}
