import 'package:employee_app/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OneDayLeaveInfoWidget extends StatelessWidget {
  final String leaveTitle;
  final String leaveReason;
  final DateTime leaveDate;
  final String? leaveStatus;
  final Color borderColor;
  final Color outerShade;
  final Color innerShade;
  final Color textColor;
  const OneDayLeaveInfoWidget(
      {Key? key,
      required this.leaveTitle,
      required this.leaveReason,
      required this.leaveDate,
      this.leaveStatus,
      required this.borderColor,
      required this.innerShade,
      required this.outerShade,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      height: MediaQuery.of(context).size.height / 7,
      width: 342,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadii.radius12px,
        boxShadow: [
          BoxShadow(
              color: const Color(0xff000000).withOpacity(0.08),
              blurRadius: 110,
              spreadRadius: 2),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: 75,
                  decoration: BoxDecoration(
                      // color: ContainerColors.surfblue.withOpacity(0.2),
                      border: Border.all(color: borderColor),
                      boxShadow: [
                        BoxShadow(
                          color: outerShade,
                        ),
                        BoxShadow(
                          color: innerShade,
                          spreadRadius: -10,
                          blurRadius: 10,
                        )
                      ],
                      borderRadius: BorderRadii.radius12px),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(leaveDate.day.toString(),
                          style: AppFonts.mediumTextBB
                              .copyWith(color: textColor, fontSize: 16)),
                      Text(
                        DateFormat('MMM').format(leaveDate).toUpperCase(),
                        style: AppFonts.mediumTextBB
                            .copyWith(color: textColor, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              if (leaveStatus != null) ...[
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                  child: Text(
                    leaveStatus ?? '',
                    style: AppFonts.smallTextBB.copyWith(
                      color: TextColors.primaryColor,
                      fontSize: 10,
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: ContainerColors.surfblue,
                      borderRadius: BorderRadii.radius4px),
                )
              ]
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  leaveTitle,
                  style: AppFonts.mediumTextBB,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  leaveReason,
                  style: AppFonts.smallText12
                      .copyWith(color: TextColors.labelTextGrey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
