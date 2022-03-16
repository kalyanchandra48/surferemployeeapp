import 'package:flutter/material.dart';
import 'package:employee_app/models/food/item.dart';
import '../food_info_widget.dart';
import '../default_add_button.dart';

class FoodItemList extends StatelessWidget {
  final List<Item> foodItem;
  const FoodItemList({Key? key, required this.foodItem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.all(24),
        physics: const ClampingScrollPhysics(),
        itemCount: foodItem.length,
        shrinkWrap: true,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 15,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return foodInfoWidget(
            foodItem: foodItem[index],
            actionWidget: DefaultAddButton(item: foodItem[index]),
          );
        });
  }
}
