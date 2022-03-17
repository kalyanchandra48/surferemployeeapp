import 'package:employee_app/common_widgets/food_info_widget.dart';
import 'package:employee_app/pages/food_page/food_page_components/add_quantity_button.dart';
import 'package:flutter/material.dart';
import 'package:employee_app/models/food/item.dart';

class FoodItemList extends StatefulWidget {
  final List<Item> foodItem;
  const FoodItemList({Key? key, required this.foodItem}) : super(key: key);

  @override
  State<FoodItemList> createState() => _FoodItemListState();
}

class _FoodItemListState extends State<FoodItemList> {
  @override
  Widget build(BuildContext context) {
    List<Item> cartItem = [];
    return ListView.separated(
        padding: const EdgeInsets.all(24),
        physics: const ClampingScrollPhysics(),
        itemCount: widget.foodItem.length,
        shrinkWrap: true,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 15,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          int avalableQty = widget.foodItem[index].availableQty;
          return FoodInfoWidget(
            foodItem: widget.foodItem[index],
            actionWidget: AddQuantityButton(
              removeButton: () {
                // setState(() {
                //   if (widget.foodItem[index].availableQty > 0) {
                //     avalableQty = avalableQty - 1;
                //     print(avalableQty);
                //   }
                // });
              },
              addButton: () {},
            ),
          );
        });
  }
}
