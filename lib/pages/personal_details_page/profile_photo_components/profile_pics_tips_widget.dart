import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../../styles/styles.dart';

class ProfilePictureTips extends StatelessWidget {
  const ProfilePictureTips({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      dashPattern: const [9, 6],
      color: Colors.blue,
      strokeCap: StrokeCap.round,
      borderType: BorderType.RRect,
      strokeWidth: 1.5,
      child: Container(
          height: 150,
          width: 249,
          decoration: BoxDecoration(
            // borderRadius: BorderRadii.radius12px,
            color: ContainerColors.primaryTextField,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Your photo should:',
                  style: AppFonts.whiteheader.copyWith(fontSize: 13)),
              Text(
                'Have a plain background',
                style: AppFonts.hintText13,
              ),
              Text(
                'Be crisp and clear',
                style: AppFonts.hintText13,
              ),
              Text(
                'Be gentle, No sunglasses',
                style: AppFonts.hintText13,
              )
            ],
          )),
    );
  }
}
