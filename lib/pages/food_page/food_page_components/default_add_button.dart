import 'package:flutter/material.dart';
import 'package:employee_app/styles/styles.dart';
import 'package:employee_app/models/food/item.dart';

class DefaultAddButton extends StatefulWidget {
  Item item;
  DefaultAddButton({required this.item});
  @override
  _DefaultAddButtonState createState() => _DefaultAddButtonState();
}

class _DefaultAddButtonState extends State<DefaultAddButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // print(items[index].name);
        setState(() {
          widget.item.orderQty = widget.item.orderQty + 1;
          print(widget.item.orderQty);
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
        //  height: 24,
        // width: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: ContainerColors.bluelight,
        ),
        child: Text('+ Add',
            style: AppFonts.smallText12.copyWith(
                color: TextColors.surfblue, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
