import 'package:employee_app/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:employee_app/services/auth.dart';
import 'package:employee_app/services/locator.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  bool click = false;
  double turns = 0.0;
  double turns1 = 0.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      height: 92,
      decoration: BoxDecoration(
          color: AppColors.bottomNavColor,
          borderRadius: BorderRadii.radius24px),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                turns == 0.0 ? turns -= 1 : turns += 1;
                //click = !click;
              });
            },
            child: AnimatedRotation(
              curve: Curves.easeOutExpo,
              turns: turns,
              duration: const Duration(seconds: 3),
              child: AnimatedContainer(
                height: 52,
                width: 52,
                curve: Curves.fastLinearToSlowEaseIn,
                duration: const Duration(seconds: 1),
                decoration: BoxDecoration(
                    color: click
                        ? ContainerColors.surfblue
                        : ContainerColors.whiteContainer,
                    borderRadius: BorderRadii.radius12px,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(10, 10),
                        spreadRadius: 5,
                        blurRadius: 12,
                        color: const Color(0xff000000).withOpacity(0.2),
                      ),
                    ]),
                child: SvgPicture.asset(
                  'assets/home_active.svg',
                  height: 32,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                turns1 == 0.0 ? turns1 -= 1 : turns1 += 1;
                //click = !click;
              });
            },
            child: AnimatedRotation(
              curve: Curves.easeOutExpo,
              turns: turns1,
              duration: const Duration(seconds: 4),
              child: AnimatedContainer(
                height: 52,
                width: 52,
                duration: const Duration(seconds: 1),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    border: Border.all(
                        color: Colors.white.withOpacity(0.1), width: 2),
                    borderRadius: BorderRadii.radius12px),
                child: SvgPicture.asset(
                  'assets/people_inactive.svg',
                  height: 32,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              final AuthService _auth = locator<AuthService>();
              _auth.signOut();
            },
            child: AnimatedContainer(
              height: 52,
              width: 52,
              duration: const Duration(seconds: 1),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.white.withOpacity(0.1), width: 2),
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadii.radius12px),
              child: SvgPicture.asset(
                'assets/happy_emoji_inactive.svg',
                height: 32,
                fit: BoxFit.scaleDown,
              ),
            ),
          )
        ],
      ),
    );
  }
}
