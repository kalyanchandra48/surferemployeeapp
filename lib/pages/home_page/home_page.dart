import 'package:employee_app/pages/it_request_page/it_request_page.dart';
import 'package:employee_app/pages/leaves_page/leaves.dart';
import 'package:flutter/material.dart';
import 'package:employee_app/pages/login_page/login_page_components.dart/login_page_components.dart';
import 'home_page_components.dart/essential_label_container.dart';
import 'home_page_components.dart/home_page_components.dart';

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
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    EssentialLabelWidget(
                      imageURl: 'assets/success.png',
                      titleText: 'Food',
                      type: 'FOOD_UPDATES',
                      labelText: '15 Items',
                      innerShade: ContainerColors.yellowShadelight,
                      outerShade: ContainerColors.yellowShade,
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => LeavesPage()));
                      },
                      child: EssentialLabelWidget(
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
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Extras',
                  style: AppFonts.appHeaderBlack,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ExtrasLabelWidget(
                      bgColor: ContainerColors.yellowShade,
                      assetImagePath: 'assets/files.png',
                      labelText: 'Payslips',
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
                        // showModalBottomSheet(
                        //     isScrollControlled: true,
                        //     shape: const RoundedRectangleBorder(
                        //       borderRadius: BorderRadii.radius24px,
                        //     ),
                        //     context: context,
                        //     builder: (BuildContext context) {
                        //       return ITRequestSheet();
                        //     });
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
