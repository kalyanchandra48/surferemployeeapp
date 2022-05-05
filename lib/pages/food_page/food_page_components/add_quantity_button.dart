import 'package:employee_app/pages/food_page/view_model/food_page_vmodel.dart';
import 'package:flutter/material.dart';
import 'package:employee_app/styles/styles.dart';
import 'package:employee_app/models/food/item.dart';

class AddQuantityButton extends StatefulWidget {
  late Item foodItem;
  late Function qtyUpdater;
  AddQuantityButton({
    Key? key,
    required this.foodItem,
    required this.qtyUpdater,
  }) : super(key: key);
  @override
  _AddQuantityButtonState createState() => _AddQuantityButtonState();
}

class _AddQuantityButtonState extends State<AddQuantityButton> {
  void sub() {
    setState(() {
      FoodPageViewModel.of(context).checkButtonEnable();
      if (widget.foodItem.orderQty > 0) widget.qtyUpdater(-1);
    });
  }

  void add() {
    setState(() {
      FoodPageViewModel.of(context).checkButtonEnable();
      if (widget.foodItem.availableQty > widget.foodItem.orderQty) {
        widget.qtyUpdater(1);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: ContainerColors.bluelight,
      ),
      child: Row(children: [
        GestureDetector(
          onTap: sub,
          child: Container(
              color: Colors.transparent,
              width: 30,
              height: 30,
              child: Center(
                child: Text(
                  '-',
                  style: AppFonts.smallTextBB.copyWith(
                    color: TextColors.surfblue,
                  ),
                ),
              )),
        ),
        Text(widget.foodItem.orderQty.toString(),
            style: AppFonts.smallTextBB.copyWith(
              color: TextColors.surfblue,
            )),
        GestureDetector(
          onTap: add,
          child: Container(
            width: 30,
            color: Colors.transparent,
            height: 30,
            child: Center(
              child: Text(
                '+',
                style: AppFonts.smallTextBB.copyWith(
                  color: TextColors.surfblue,
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
