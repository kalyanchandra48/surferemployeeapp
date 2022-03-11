import 'dart:async';

import 'package:employee_app/common_widgets/background_grid_lines.dart';
import 'package:employee_app/common_widgets/bottom_nav_widget.dart';
import 'package:employee_app/pages/home_page/home_page.dart';
import 'package:employee_app/pages/personal_details_page/personal_details_page_components/personal_details_page_components.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List<Widget> screens = [
    HomePage(),
  ];

  StreamController<Widget> stream = StreamController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.appthemeColor,
        bottomNavigationBar: const BottomNavBarWidget(),
        body: CustomPaint(
          painter: BackgroundGridLines(
            heightGap: 30,
            widthGap: 15,
          ),
          child: StreamBuilder<Widget>(
              stream: stream.stream,
              builder: (context, snapshot) {
                return const HomePage();
              }),
        ));
  }
}
