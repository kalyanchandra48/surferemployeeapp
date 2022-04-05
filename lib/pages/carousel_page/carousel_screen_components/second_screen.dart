import 'package:flutter/material.dart';

import '../../../styles/styles.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: ContainerColors.yellowThick,
          ),
          BoxShadow(
            color: ContainerColors.yellowShadelight,
            spreadRadius: -30,
            blurRadius: 100,
          ),
        ],
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset("assets/Cart.png"),
        Text('Order and grab your food',
            style: AppFonts.largeTextBB
                .copyWith(color: TextColors.secondaryColor)),
        const SizedBox(height: 5),
        Text(
          'Choose your snack, add quantity',
          style: AppFonts.inActiveTabTextRB,
        ),
        Text(
          'and pay on the go',
          style: AppFonts.inActiveTabTextRB,
        ),
        const SizedBox(height: 30),
      ]),
    );
  }
}
