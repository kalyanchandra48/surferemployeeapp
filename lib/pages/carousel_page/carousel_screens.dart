import 'package:carousel_slider/carousel_slider.dart';
import 'package:employee_app/pages/food_page/food_page_components/food_page_components.dart';
import 'package:flutter/material.dart';
import 'package:employee_app/styles/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../personal_details_page/personal_details_page.dart';

class IntroScreens extends StatelessWidget {
  IntroScreens({Key? key}) : super(key: key);
  final List<Widget> _screens = [
    const FirstScreen(),
    const SecondScreen(),
  ];
  final double current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.bottomCenter, children: [
        CarouselSlider(
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height,
            autoPlay: false,
            enableInfiniteScroll: false,
            viewportFraction: 1.6,
          ),
          items: _screens,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PersonalDetailPage(),
              ),
            );
          },
          child: Positioned(
            child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                height: 56,
                color: ContainerColors.green,
                child: Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Text('Log in with ',
                          style: AppFonts.largeTextBB.copyWith(
                              color: TextColors.secondaryColor, fontSize: 16)),
                      SvgPicture.asset("assets/googleicon.svg"),
                    ]))),
          ),
        ),
      ]),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: ContainerColors.surfblue,
          ),
          BoxShadow(
            color: ContainerColors.bluelight,
            spreadRadius: -35,
            blurRadius: 100,
          ),
        ],
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset("assets/card.png"),
        Text('Claims and applications',
            style: AppFonts.largeTextBB
                .copyWith(color: TextColors.secondaryColor)),
        Text('made easier',
            style: AppFonts.largeTextBB
                .copyWith(color: TextColors.secondaryColor)),
        const SizedBox(height: 5),
        Text(
          'Apply and track the status',
          style: AppFonts.inActiveTabTextRB,
        ),
        const SizedBox(height: 30),
      ]),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: ContainerColors.yellowThick,
          ),
          BoxShadow(
            color: ContainerColors.yellowShadelight,
            spreadRadius: -30,
            blurRadius: 100,
          ),
        ],
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset("assets/Cart.png"),
        Text('Order and grab your food',
            style: AppFonts.largeTextBB
                .copyWith(color: TextColors.secondaryColor)),
        const SizedBox(height: 5),
        Text(
          'Choose your snack, add quantity',
          style: AppFonts.inActiveTabTextRB,
        ),
        Text(
          'and pay on the go',
          style: AppFonts.inActiveTabTextRB,
        ),
        const SizedBox(height: 30),
      ]),
    );
  }
}
