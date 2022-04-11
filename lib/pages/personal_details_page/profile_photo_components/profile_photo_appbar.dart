import 'package:flutter/material.dart';

import '../../../styles/styles.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 5, top: 40, bottom: 23),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 44,
              color: const Color(0xff000000).withOpacity(0.6),
            ),
          ],
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(24),
          ),
          color: ContainerColors.white,
        ),
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_outlined),
            ),
            Container(
              height: 68,
              width: 68,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: ContainerColors.yellowShade,
                  ),
                  BoxShadow(
                    color: ContainerColors.yellowShadelight,
                    spreadRadius: -13,
                    blurRadius: 10.0,
                  )
                ],
                shape: BoxShape.circle,
              ),
              child: Center(child: Image.asset("assets/Telescope.png")),
            ),
            const SizedBox(width: 9),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Profile photo',
                  style: AppFonts.appHeaderBlack,
                ),
                Text(
                  'Add your profile photo (2/2)',
                  style: AppFonts.hintText14,
                )
              ],
            )
          ],
        ));
  }
}
