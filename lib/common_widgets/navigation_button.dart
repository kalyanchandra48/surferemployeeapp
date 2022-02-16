import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final TextStyle buttonTextStyle;

  const NavigationButton({
    Key? key,
    required this.buttonColor,
    required this.text,
    required this.buttonTextStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width / 1.1,
      child: Center(
        child: Text(
          text,
          style: buttonTextStyle,
        ),
      ),
      decoration: BoxDecoration(
          color: buttonColor, borderRadius: BorderRadius.circular(12)),
    );
  }
}
