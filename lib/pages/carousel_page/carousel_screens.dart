import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:employee_app/models/user/user.dart';
import 'package:employee_app/pages/food_page/food_page_components/food_page_components.dart';
import 'package:employee_app/pages/personal_details_page/profile_info_page.dart';
import 'package:employee_app/pages/personal_details_page/profile_photo_page.dart';
import 'package:employee_app/provider/app_view_model.dart';
import 'package:employee_app/services/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:isar/isar.dart';

import 'package:provider/provider.dart';

import '../../models/auth_status.dart';
import '../../services/auth.dart';
import '../../services/locator.dart';
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
  final AuthService _auth = locator<AuthService>();
  static var current = 0;
  final Isar _isar = locator<AppViewModel>().isar;

  String? name;

  @override
  void initState() {
    _isar.users.where().firstnameProperty().findFirst().then(
          (value) => {
            name = value,
          },
        );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final AuthStatus _status = Provider.of<AuthStatus>(context);

    if (_status.status == AUTH_STATUS.VERIFICATION_COMPLETED) {
      Timer(const Duration(milliseconds: 100), () {
        (name == null)
            ? Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfileInfo(),
                ),
              )
            : Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfilePhotoPage(),
                ),
              );
      });
    }
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
          SizedBox(height: MediaQuery.of(context).size.height / 32),
          GestureDetector(
            onTap: () async {
              await _auth.signInWithGoogle();
            },
            child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
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
            scrollPhysics: const ClampingScrollPhysics(),
            height: MediaQuery.of(context).size.height,
            autoPlay: false,
            enableInfiniteScroll: false,
            viewportFraction: 1.0,
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
