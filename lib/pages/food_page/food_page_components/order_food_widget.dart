import 'package:employee_app/common_widgets/food_info_widget.dart';
import 'package:flutter/material.dart';
import '../../../models/food/item.dart';

class OrderFoodWidget extends StatelessWidget {
  final List<Item> foodItem;
  const OrderFoodWidget({Key? key, required this.foodItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 24),
        shrinkWrap: true,
        itemCount: 5,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 15);
        },
        itemBuilder: (BuildContext context, int index) {
          return FoodInfoWidget(
            foodItem: foodItem[index],
            actionWidget: Container(),
          );
        });
  }
}
