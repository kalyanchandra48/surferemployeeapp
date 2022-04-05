import 'package:employee_app/common_widgets/background_grid_lines.dart';
import 'package:employee_app/common_widgets/navigation_button.dart';
import 'package:employee_app/pages/bottom_nav/bottom_nav.dart';
import 'package:employee_app/pages/personal_details_page/personal_details_page_components/personal_details_page_components.dart';
import 'package:flutter/material.dart';

class GeneralDetailsPage extends StatelessWidget {
  const GeneralDetailsPage({Key? key}) : super(key: key);
  // final AuthService _auth = locator<AuthService>();
  // final TextEditingController _pfTextController = TextEditingController();
  // final TextEditingController _insuranceTextController =
  //     TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: AppColors.appthemeColor,
            floatingActionButton: GestureDetector(
              onTap: () async {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BottomNav(),
                    ),
                    (route) => false);
              },
              child: NavigationButton(
                text: 'Let\'s Go',
                buttonColor: ButtonColors.nextButton,
                buttonTextStyle: AppFonts.buttonTextBB,
              ),
            ),
            body: CustomPaint(
              painter: BackgroundGridLines(heightGap: 30, widthGap: 15),
              child: Column(children: const [ProfileAppBar()]),
            )));
  }
}

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 5, top: 49, bottom: 23),
        height: 140,
        decoration: BoxDecoration(
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
                child: Center(
                  child: Image.asset("assets/Telescope.png"),
                )),
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
