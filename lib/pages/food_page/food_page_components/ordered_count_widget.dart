import 'package:employee_app/styles/styles.dart';
import 'package:flutter/material.dart';

class OrderedCountWidget extends StatelessWidget {
  final int orderedqty;
  const OrderedCountWidget({Key? key, required this.orderedqty})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 31,
      decoration: BoxDecoration(
        borderRadius: BorderRadii.radius5px,
        color: ContainerColors.bluelight,
      ),
      child: Center(
          child: Text(
        orderedqty.toString(),
        style: AppFonts.smallTextBB.copyWith(
          color: TextColors.surfblue,
        ),
      )),
    );
  }
}
