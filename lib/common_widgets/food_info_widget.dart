import 'package:flutter/material.dart';

import '../models/food/item.dart';
import '../styles/styles.dart';

class FoodInfoWidget extends StatelessWidget {
  final Item foodItem;
  final Widget actionWidget;
  const FoodInfoWidget(
      {Key? key, required this.foodItem, required this.actionWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
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
            padding: const EdgeInsets.only(left: 14, top: 6),
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
          const Spacer(),
          actionWidget
        ],
      ),
    );
  }
}
