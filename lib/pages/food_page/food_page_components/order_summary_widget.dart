import 'package:employee_app/services/utils.dart';
import 'package:flutter/material.dart';
import '../../../models/food/item.dart';
import './food_page_components.dart';

class OrderSummaryWidget extends StatelessWidget {
  final List<Item> allItems;

  static final DateTime now = DateTime.now();
  static final DateFormat formatter = DateFormat('dd MMMM yyyy, H:mm');
  final String formatted = formatter.format(now);

  OrderSummaryWidget({
    Key? key,
    required this.allItems,
  }) : super(key: key);

  String getTotal() {
    num totalAmount = 0;
    for (var e in allItems) {
      num amount = e.orderQty * int.parse(e.amount);
      totalAmount = totalAmount + amount;
    }
    return totalAmount.toString();
  }

  String getOrderId() {
    String orderId = Utils.getRandomSecureString(12).toString();
    return orderId;
  }

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
                '#' + getOrderId(),
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
            itemCount: allItems.length,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 8);
            },
            itemBuilder: (BuildContext context, int index) {
              final totalPriceItem =
                  allItems[index].orderQty * int.parse(allItems[index].amount);

              return Row(
                children: [
                  Text(
                    allItems[index].name +
                        ' x ' +
                        '(' +
                        allItems[index].orderQty.toString() +
                        ')',
                    style: AppFonts.foodNameHeader
                        .copyWith(fontWeight: FontWeight.normal),
                  ),
                  const Spacer(),
                  Text(
                    totalPriceItem.toString(),
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
              getTotal(),
              style: AppFonts.mediumTextBB
                  .copyWith(color: TextColors.secondaryColor),
            ),
          ]),
        ],
      ),
    );
  }
}
