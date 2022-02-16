import 'package:employee_app/common_widgets/background_grid_lines.dart';
import 'package:employee_app/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      height: 92,
      decoration: BoxDecoration(
          color: AppColors.bottomNavColor,
          borderRadius: BorderRadii.radius24px),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 52,
              width: 52,
              decoration: BoxDecoration(
                  color: IconColors.primaryColor,
                  borderRadius: BorderRadii.radius12px,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(10, 10),
                      spreadRadius: 5,
                      blurRadius: 12,
                      color: Color(0xff000000).withOpacity(0.2),
                    ),
                  ]),
              child: SvgPicture.asset(
                'assets/home_active.svg',
                height: 32,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          Container(
            height: 52,
            width: 52,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                border:
                    Border.all(color: Colors.white.withOpacity(0.1), width: 2),
                borderRadius: BorderRadii.radius12px),
            child: SvgPicture.asset(
              'assets/people_inactive.svg',
              height: 32,
              fit: BoxFit.scaleDown,
            ),
          ),
          Container(
            height: 52,
            width: 52,
            decoration: BoxDecoration(
                border:
                    Border.all(color: Colors.white.withOpacity(0.1), width: 2),
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadii.radius12px),
            child: SvgPicture.asset(
              'assets/happy_emoji_inactive.svg',
              height: 32,
              fit: BoxFit.scaleDown,
            ),
          )
        ],
      ),
    );
  }
}
