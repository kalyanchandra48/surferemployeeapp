import 'package:flutter/material.dart';

import '../../../styles/styles.dart';

class SkipProfileButton extends StatelessWidget {
  const SkipProfileButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width / 1.1,
      child: Center(
        child: Text(
          'Skip',
          style: AppFonts.whiteheader.copyWith(fontSize: 14),
        ),
      ),
      decoration: BoxDecoration(
          border: Border.all(width: 4, color: ContainerColors.green),
          borderRadius: BorderRadius.circular(12)),
    );
  }
}
