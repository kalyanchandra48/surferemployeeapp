import 'package:flutter/material.dart';
import 'package:employee_app/styles/styles.dart';
import 'package:intl/intl.dart';
import 'package:dotted_line/dotted_line.dart';

class OrderSummaryWidget extends StatelessWidget {
  @override
  static final DateTime now = DateTime.now();
  static final DateFormat formatter = DateFormat('dd MMMM yyyy, H:mm');
  final String formatted = formatter.format(now);
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 17),
      //      height: 222,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            spreadRadius: 0,
            blurRadius: 1,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadii.radius12px,
        color: Color(0xffFEEFC0),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Order ID',
                style: AppFonts.smallText12
                    .copyWith(color: TextColors.secondaryColor),
              ),
              Spacer(),
              Text(
                '#130175288223',
                style: AppFonts.smallText12
                    .copyWith(color: TextColors.secondaryColor),
              ),
            ],
          ),
          SizedBox(height: 7),
          Row(
            children: [
              Text(
                'Placed at',
                style: AppFonts.smallText12
                    .copyWith(color: TextColors.secondaryColor),
              ),
              Spacer(),
              Text(
                formatted,
                style: AppFonts.smallText12
                    .copyWith(color: TextColors.secondaryColor),
              ),
            ],
          ),
          SizedBox(height: 16),
          DottedLine(),
          ListView.separated(
            physics: ClampingScrollPhysics(),
            padding: EdgeInsets.symmetric(vertical: 15),
            shrinkWrap: true,
            itemCount: 3,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(height: 8);
            },
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: [
                  Text(
                    'Samosa x (2)',
                    style: AppFonts.foodNameHeader
                        .copyWith(fontWeight: FontWeight.normal),
                  ),
                  Spacer(),
                  Text(
                    '\$20',
                    style: AppFonts.foodNameHeader
                        .copyWith(fontWeight: FontWeight.normal),
                  ),
                ],
              );
            },
          ),
          const DottedLine(),
          const SizedBox(height: 15),
          Row(children: [
            Text(
              'Total',
              style: AppFonts.mediumTextBB
                  .copyWith(color: TextColors.secondaryColor),
            ),
            Spacer(),
            Text(
              '\$60',
              style: AppFonts.mediumTextBB
                  .copyWith(color: TextColors.secondaryColor),
            ),
          ]),
        ],
      ),
    );
  }
}
