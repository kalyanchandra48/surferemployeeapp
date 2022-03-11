import 'package:employee_app/styles/styles.dart';
import 'package:flutter/material.dart';

class LeaveDateTimeWidget extends StatelessWidget {
  final String hintText;
  final double width;

  const LeaveDateTimeWidget({
    required this.hintText,
    required this.width,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      decoration: BoxDecoration(
          color: ContainerColors.secondaryTextField.withOpacity(0.09),
          border: Border.all(color: BorderColor.borderprimarygrey, width: 1.5),
          borderRadius: BorderRadii.radius8px),
      child: TextFormField(
        onTap: () {},
        enabled: false,
        //controller: ,
        style: AppFonts.smallText12.copyWith(
          fontSize: 16,
          color: TextColors.secondaryColor,
        ),
        textCapitalization: TextCapitalization.sentences,
        maxLines: 1,
        decoration: InputDecoration(
            // suffixIcon: const Icon(
            //   Icons.keyboard_arrow_down,
            //   color: Colors.black,
            // ),
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: AppFonts.hintText14.copyWith(fontSize: 16)),
      ),
    );
  }
}
