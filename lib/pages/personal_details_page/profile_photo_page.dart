import 'package:employee_app/pages/personal_details_page/profile_photo_components/profile_page_viewmodel.dart';
import 'package:employee_app/pages/personal_details_page/profile_photo_components/profile_picker_widget.dart';
import 'package:flutter/material.dart';

import 'package:employee_app/pages/leaves_page/leaves_page_components/leaves_page_components.dart';
import 'package:employee_app/pages/personal_details_page/profile_photo_components/profile_photo_appbar.dart';
import 'package:employee_app/pages/personal_details_page/profile_photo_components/profile_pics_tips_widget.dart';
import 'package:employee_app/pages/personal_details_page/profile_photo_components/skip_profile_button.dart';
import 'package:provider/provider.dart';

class ProfilePhotoPage extends StatelessWidget {
  const ProfilePhotoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => ProfileViewModel(),
        builder: (_, value) => GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Scaffold(
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.centerFloat,
                resizeToAvoidBottomInset: false,
                backgroundColor: AppColors.appthemeColor,
                floatingActionButton:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  GestureDetector(
                    onTap: () async {
                      // ProfileViewModel.of(context).changeProfileImage(_, _);
                      // Navigator.pushAndRemoveUntil(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => const BottomNav(),
                      //     ),
                      //     (route) => false);
                    },
                    child: NavigationButton(
                      text: 'Save',
                      buttonColor: ButtonColors.nextButton,
                      buttonTextStyle: AppFonts.buttonTextBB,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SkipProfileButton(),
                ]),
                body: SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: CustomPaint(
                    painter: BackgroundGridLines(heightGap: 30, widthGap: 15),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: Column(children: [
                        const ProfileAppBar(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 12.5,
                        ),
                        const ProfilePickerWidget(),
                        const SizedBox(
                          height: 20,
                        ),
                        const ProfilePictureTips(),
                      ]),
                    ),
                  ),
                ))));
  }
}
