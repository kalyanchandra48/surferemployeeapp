import 'package:employee_app/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MultipleDaysLeaveInfoWidget extends StatelessWidget {
  final String leaveTitle;
  final String leaveReason;
  final String? leavestatus;
  final DateTime fromDate;
  final DateTime toDate;
  final Color borderColor;
  final Color innerShade;
  final Color outerShade;
  final Color dividerColor;
  final Color textColor;

  const MultipleDaysLeaveInfoWidget({
    Key? key,
    required this.leaveTitle,
    required this.leaveReason,
    this.leavestatus,
    required this.fromDate,
    required this.toDate,
    required this.borderColor,
    required this.innerShade,
    required this.outerShade,
    required this.dividerColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadii.radius12px,
        boxShadow: [
          BoxShadow(
            color: const Color(0xff000000).withOpacity(0.08),
            blurRadius: 110,
            spreadRadius: 2,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                child: Container(
                  padding: const EdgeInsets.all(18),
                  //height: 250,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadii.radius12px,
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
                  ),
                  child: IntrinsicHeight(
                    child: Column(
                      children: [
                        Text(fromDate.day.toString(),
                            style: AppFonts.mediumTextBB
                                .copyWith(color: textColor, fontSize: 16)),
                        Text(
                          DateFormat('MMM').format(fromDate).toUpperCase(),
                          style: AppFonts.mediumTextBB
                              .copyWith(color: textColor, fontSize: 12),
                        ),
                        SizedBox(
                          height: 40,
                          child: VerticalDivider(
                            thickness: 2,
                            color: dividerColor,
                            width: 20,
                            indent: 5,
                            endIndent: 5,
                          ),
                        ),
                        Text(toDate.day.toString(),
                            style: AppFonts.mediumTextBB
                                .copyWith(color: textColor, fontSize: 16)),
                        Text(
                          DateFormat('MMM').format(toDate).toUpperCase(),
                          style: AppFonts.mediumTextBB
                              .copyWith(color: textColor, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              if (leavestatus != null)
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                  child: Text(
                    leavestatus ?? '',
                    style: AppFonts.smallTextBB.copyWith(
                      color: TextColors.primaryColor,
                      fontSize: 10,
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: ContainerColors.surfblue,
                      borderRadius: BorderRadii.radius4px),
                )
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
                  maxLines: 3,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
