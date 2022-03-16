import 'package:flutter/material.dart';
import 'package:employee_app/styles/styles.dart';

class OrderFoodWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(vertical: 24),
        shrinkWrap: true,
        itemCount: 5,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 15);
        },
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(16),
            height: 84,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff000000).withOpacity(0.08),
                  blurRadius: 84,
                  spreadRadius: 0,
                ),
              ],
              color: Colors.white,
            ),
          );
        });
  }
}
