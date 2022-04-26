import 'package:flutter/material.dart';
import './food_page_components.dart';

class OrderSummaryWidget extends StatelessWidget {
  @override
  static final DateTime now = DateTime.now();
  static final DateFormat formatter = DateFormat('dd MMMM yyyy, H:mm');
  final String formatted = formatter.format(now);

  OrderSummaryWidget({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 17),
      decoration: BoxDecoration(
        boxShadow: [
          const BoxShadow(
            color: Color(0xffF0D47D),
          ),
          BoxShadow(
            color: ContainerColors.yellowShadelight,
            spreadRadius: -9,
            blurRadius: 20,
          ),
        ],
        borderRadius: BorderRadii.radius12px,
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
              const Spacer(),
              Text(
                '#130175288223',
                style: AppFonts.smallText12
                    .copyWith(color: TextColors.secondaryColor),
              ),
            ],
          ),
          const SizedBox(height: 7),
          Row(
            children: [
              Text(
                'Placed at',
                style: AppFonts.smallText12
                    .copyWith(color: TextColors.secondaryColor),
              ),
              const Spacer(),
              Text(
                formatted,
                style: AppFonts.smallText12
                    .copyWith(color: TextColors.secondaryColor),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const DottedLine(),
          ListView.separated(
            physics: const ClampingScrollPhysics(),
            padding: const EdgeInsets.symmetric(vertical: 15),
            shrinkWrap: true,
            itemCount: 3,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 8);
            },
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: [
                  Text(
                    'Samosa x (2)',
                    style: AppFonts.foodNameHeader
                        .copyWith(fontWeight: FontWeight.normal),
                  ),
                  const Spacer(),
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
            const Spacer(),
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
