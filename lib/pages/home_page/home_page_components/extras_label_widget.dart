import 'package:employee_app/pages/home_page/home_page_components/home_page_components.dart';
import 'package:flutter/material.dart';

class ExtrasLabelWidget extends StatelessWidget {
  final String labelText;
  final Color bgColor;
  final String assetImagePath;
  const ExtrasLabelWidget({
    required this.bgColor,
    required this.labelText,
    required this.assetImagePath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 38,
          backgroundColor: bgColor,
          child: Center(
            child: Image.asset(
              assetImagePath,
              height: 70,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          labelText,
          style: AppFonts.smallTextBB,
        ),
      ],
    );
  }
}
