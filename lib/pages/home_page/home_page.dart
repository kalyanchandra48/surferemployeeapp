import 'package:employee_app/pages/food_page/food_page.dart';
import 'package:employee_app/pages/it_request_page/it_request_page.dart';
import 'package:employee_app/pages/leaves_page/leaves.dart';
import 'package:employee_app/pages/payslips_page/payslips_page.dart';
import 'package:flutter/material.dart';
import 'home_page_components/home_page_components.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding:
              const EdgeInsets.only(left: 24, right: 24, top: 24, bottom: 24),
          // height: MediaQuery.of(context).size.height / 1.5,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16))),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Essentials',
                  style: AppFonts.appHeaderBlack,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => const FoodPage(),
                          ),
                        );
                      },
                      child: EssentialLabelWidget(
                        heroTag: 'foodUpdate',
                        imageURl: 'assets/success.png',
                        titleText: 'Food',
                        type: 'FOOD_UPDATES',
                        labelText: '15 Items',
                        innerShade: ContainerColors.yellowShadelight,
                        outerShade: ContainerColors.yellowShade,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const LeavesPage(),
                          ),
                        );
                      },
                      child: EssentialLabelWidget(
                        heroTag: 'leaves',
                        imageURl: 'assets/calendar.png',
                        titleText: 'Leaves',
                        type: 'LEAVES_UPDATES',
                        labelText: '23/30 days',
                        innerShade: ContainerColors.redShadelight,
                        outerShade: ContainerColors.redShade,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                Text(
                  'Extras',
                  style: AppFonts.appHeaderBlack,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PayslipsPage(),
                          ),
                        );
                      },
                      child: ExtrasLabelWidget(
                        bgColor: ContainerColors.yellowShade,
                        assetImagePath: 'assets/files.png',
                        labelText: 'Payslips',
                      ),
                    ),
                    ExtrasLabelWidget(
                      bgColor: ContainerColors.bluelight,
                      assetImagePath: 'assets/cards.png',
                      labelText: 'Reimbursements',
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ITRequestPage(),
                          ),
                        );
                      },
                      child: ExtrasLabelWidget(
                        bgColor: ContainerColors.surfblue,
                        assetImagePath: 'assets/it_request.png',
                        labelText: 'IT Requests',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
