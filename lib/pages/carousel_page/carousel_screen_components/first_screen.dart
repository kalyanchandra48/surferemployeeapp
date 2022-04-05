import 'package:flutter/material.dart';

import '../../../styles/styles.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: ContainerColors.surfblue,
          ),
          BoxShadow(
            color: ContainerColors.bluelight,
            spreadRadius: -35,
            blurRadius: 100,
          ),
        ],
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset("assets/card.png"),
        Text('Claims and applications',
            style: AppFonts.largeTextBB
                .copyWith(color: TextColors.secondaryColor)),
        Text('made easier',
            style: AppFonts.largeTextBB
                .copyWith(color: TextColors.secondaryColor)),
        const SizedBox(height: 5),
        Text(
          'Apply and track the status',
          style: AppFonts.inActiveTabTextRB,
        ),
        const SizedBox(height: 30),
      ]),
    );
  }
}
