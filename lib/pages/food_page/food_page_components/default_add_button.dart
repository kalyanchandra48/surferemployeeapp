import 'package:flutter/material.dart';
import 'package:employee_app/styles/styles.dart';

class DefaultAddButton extends StatelessWidget {
  final Function onTapFunction;
  const DefaultAddButton({
    Key? key,
    required this.onTapFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTapFunction()
      // print(items[index].name);
      // setState(() {
      //   widget.foodItem.orderQty = widget.foodItem.orderQty + 1;
      //   print(widget.foodItem.orderQty);
      // });
      ,
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
