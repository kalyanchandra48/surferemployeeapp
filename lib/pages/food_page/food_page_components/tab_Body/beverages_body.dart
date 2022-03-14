import 'package:flutter/material.dart';
import 'package:employee_app/styles/styles.dart';


class BeveragesTabBody extends StatelessWidget {
  const BeveragesTabBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(24),
      children: [
        Text(
          'September 2021',
          style: AppFonts.mediumTextBB,
        ),
      ]
    );
  }
}
