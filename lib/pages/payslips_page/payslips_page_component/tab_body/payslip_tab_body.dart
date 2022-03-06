import 'package:employee_app/styles/styles.dart';
import 'package:flutter/material.dart';

class PaySlipTabBody extends StatelessWidget {
  const PaySlipTabBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      padding: const EdgeInsets.all(24),
      children: [
        Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadii.radius12px,
              boxShadow: [
                BoxShadow(
                    color: const Color(0xff000000).withOpacity(0.08),
                    blurRadius: 110,
                    spreadRadius: 2),
              ],
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('September_2021.pdf',
                        style: AppFonts.largeTextBB.copyWith(fontSize: 18)),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text('Published on 13th October 2021 | 3.2kb')
                  ],
                )
              ],
            ))
      ],
    );
  }
}
