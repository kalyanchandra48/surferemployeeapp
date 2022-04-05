import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:employee_app/pages/food_page/food_page_components/food_page_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../personal_details_page/personal_details_page.dart';
import 'carousel_screen_components/carousel_components.dart';

class IntroScreens extends StatefulWidget {
  const IntroScreens({Key? key}) : super(key: key);

  @override
  State<IntroScreens> createState() => _IntroScreensState();
}

class _IntroScreensState extends State<IntroScreens> {
  final List<Widget> _screens = [
    const FirstScreen(),
    const SecondScreen(),
  ];

  static var current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          DotsIndicator(
            dotsCount: 2,
            position: current.toDouble(),
            decorator: DotsDecorator(
              activeColor: ContainerColors.secondaryTextField,
              color: ContainerColors.secondaryTextFieldOpacity,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 8.5),
          GestureDetector(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const PersonalDetailPage(),
                ),
                (route) => false,
              );
            },
            child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadii.radius5px,
                  color: ContainerColors.green,
                ),
                child: Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Text('Log in with ',
                          style: AppFonts.largeTextBB.copyWith(
                              color: TextColors.secondaryColor, fontSize: 16)),
                      SvgPicture.asset("assets/googleicon.svg"),
                    ]))),
          )
        ],
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      body: CarouselSlider(
        options: CarouselOptions(
            height: MediaQuery.of(context).size.height,
            autoPlay: false,
            enableInfiniteScroll: false,
            viewportFraction: 1,
            onPageChanged: (index, CarouselPageChangedReason reason) {
              setState(() {
                current = index;
              });
            }),
        items: _screens,
      ),
    );
  }
}
