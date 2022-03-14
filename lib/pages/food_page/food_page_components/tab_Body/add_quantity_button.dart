import 'package:flutter/material.dart';
import 'package:employee_app/styles/styles.dart';
import 'package:employee_app/models/food/item.dart';

class AddQuantityButton extends StatefulWidget {
  @override
  _AddQuantityButtonState createState() => _AddQuantityButtonState();
}

class _AddQuantityButtonState extends State<AddQuantityButton> {
  @override
  int availableQty = 1;
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: ContainerColors.bluelight,
      ),
      child: Row(children: [
        GestureDetector(
          onTap: () {
            setState(() {
              if (availableQty > 1) {
                availableQty = availableQty - 1;
                print(availableQty);
              }
            });
          },
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
        Text(availableQty.toString(),
            style: AppFonts.smallTextBB.copyWith(
              color: TextColors.surfblue,
            )),
        GestureDetector(
          onTap: () {
            setState(() {
              if (availableQty >= 1 && availableQty < 15) {
                availableQty = availableQty + 1;
                print(availableQty);
              }
            });
          },
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
