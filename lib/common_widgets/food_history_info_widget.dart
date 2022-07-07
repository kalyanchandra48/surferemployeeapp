import 'package:employee_app/pages/food_page/food_page_components/food_history_ordercount_widget.dart';
import 'package:employee_app/styles/styles.dart';
import 'package:flutter/material.dart';

class FoodHistoryInfoWidget extends StatelessWidget {
  const FoodHistoryInfoWidget({
    Key? key,
  }) : super(key: key);

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
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://4.imimg.com/data4/OV/RR/GLADMIN-11740016/kjkj-500x500.jpg'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14, top: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 150,
                  child: Text('Badam Drink', style: AppFonts.foodNameHeader),
                ),
                const SizedBox(height: 2),
                Text('40', style: AppFonts.hintText14),
              ],
            ),
          ),
          const Spacer(),
          FoodHistoryOrderCountWidget(orderedqty: 4),
        ],
      ),
    );
  }
}
