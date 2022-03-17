import 'package:flutter/material.dart';
import 'package:employee_app/styles/styles.dart';

class AddQuantityButton extends StatelessWidget {
  final Function addButton;
  final Function removeButton;
  AddQuantityButton(
      {Key? key, required this.addButton, required this.removeButton})
      : super(key: key);

  @override
  int availableQty = 0;
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: ContainerColors.bluelight,
      ),
      child: Row(children: [
        GestureDetector(
          onTap: removeButton(),
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
          onTap: addButton(),
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
