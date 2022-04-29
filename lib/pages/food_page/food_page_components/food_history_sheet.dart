import 'package:flutter/material.dart';
import 'package:employee_app/styles/styles.dart';

class FoodHistorySheet extends StatelessWidget {
  const FoodHistorySheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      height: MediaQuery.of(context).size.height / 1.05,
      decoration: const BoxDecoration(
        borderRadius: BorderRadii.radius24px,
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: 4,
              width: 119,
              decoration: BoxDecoration(
                borderRadius: BorderRadii.radius4px,
                color: ContainerColors.greyContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
