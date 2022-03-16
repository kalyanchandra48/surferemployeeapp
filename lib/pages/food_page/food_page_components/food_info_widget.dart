import 'package:flutter/material.dart';

import '../../../models/food/item.dart';
import '../../../styles/styles.dart';

class foodInfoWidget extends StatelessWidget {
  const foodInfoWidget(
      {Key? key, required this.foodItem, required this.actionWidget})
      : super(key: key);

  final Item foodItem;
  final Widget actionWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      //  height: 84,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff000000).withOpacity(0.08),
            blurRadius: 84,
            spreadRadius: 0,
          ),
        ],
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            height: 54,
            width: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(foodItem.imageUrl),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 14, top: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 170,
                  child: Text(foodItem.name, style: AppFonts.foodNameHeader),
                ),
                const SizedBox(height: 2),
                Text(foodItem.amount, style: AppFonts.hintText14),
              ],
            ),
          ),
          Spacer(),
          actionWidget

          //    DefaultAddButton(),
          // AnimatedCrossFade(
          //   duration: const Duration(seconds: 1),
          //   firstChild: DefaultAddButton(
          //     item: foodItem,
          //   ),
          //   secondChild: AddQuantityButton(),
          //   crossFadeState: foodItem.orderQty == 0
          //       ? CrossFadeState.showFirst
          //       : CrossFadeState.showSecond,
          // ),
        ],
      ),
    );
  }
}
