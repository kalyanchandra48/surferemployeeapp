import 'package:employee_app/common_widgets/food_info_widget.dart';
import 'package:employee_app/pages/food_page/food_page_components/add_quantity_button.dart';
import 'package:employee_app/pages/food_page/food_page_components/default_add_button.dart';
import 'package:flutter/material.dart';
import 'package:employee_app/models/food/item.dart';
import 'package:isar/isar.dart';

Map<String, Item> filtered = {};

class FoodItemList extends StatefulWidget {
  final List<Item> foodItem;
  late Isar isar;
  FoodItemList({
    Key? key,
    required this.foodItem,
  }) : super(key: key);
  Map<String, Item> cartItem = {};

  @override
  State<FoodItemList> createState() => _FoodItemListState();
}

class _FoodItemListState extends State<FoodItemList> {
  late var filteredOrder;

  void _change(index) {
    widget.foodItem[index].orderQty = widget.foodItem[index].orderQty + 1;
    widget.cartItem[widget.foodItem[index].itemId] = (widget.foodItem[index]);
    final filteredOrder = widget.cartItem;
    filtered.addEntries(filteredOrder.entries);
  }

  @override
  Widget build(BuildContext context) {
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
          return FoodInfoWidget(
            foodItem: widget.foodItem[index],
            actionWidget: Column(children: [
              Visibility(
                  visible: widget.foodItem[index].orderQty == 0,
                  child: DefaultAddButton(onTapFunction: () {
                    setState(() {
                      _change(index);
                    });
                  })),
              Visibility(
                  visible: widget.foodItem[index].orderQty > 0,
                  child: AddQuantityButton(
                      foodItem: widget.foodItem[index],
                      qtyUpdater: (int number) {
                        setState(() {
                          widget.foodItem[index].orderQty =
                              widget.foodItem[index].orderQty + number;
                          if (widget.foodItem[index].orderQty == 0) {
                            widget.cartItem
                                .remove(widget.foodItem[index].itemId);
                            filtered.remove(widget.foodItem[index].itemId);
                          }
                          widget.cartItem[widget.foodItem[index].itemId] =
                              (widget.foodItem[index]);
                        });
                        final filteredOrder = widget.cartItem;
                        filtered.addEntries(filteredOrder.entries);
                        
                      }))
            ]),
          );
        });
  }
}
