import 'dart:async';

import 'package:employee_app/common_widgets/common_widgets_component.dart';
import 'package:employee_app/pages/carousel_page/carousel_screens.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 2350), () {
      // 5s over, navigate to a new page
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const IntroScreens()));
    });

    return Scaffold(
        backgroundColor: AppColors.appthemeColor,
        body: CustomPaint(
            painter: BackgroundGridLines(heightGap: 30, widthGap: 15),
            child: const Center(
              child: RiveAnimation.asset(
                'assets/e_wave.riv',
              ),
            )));
  }
}
