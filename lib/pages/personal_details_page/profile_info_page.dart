import 'dart:async';

import 'package:employee_app/common_widgets/background_grid_lines.dart';
import 'package:employee_app/models/user/user.dart';
import 'package:employee_app/pages/personal_details_page/profile_photo_page.dart';
import 'package:employee_app/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:isar/isar.dart';
import '../../common_widgets/input_textfield_widget.dart';
import '../../common_widgets/navigation_button.dart';
import '../../models/user/user.dart';
import '../../provider/app_view_model.dart';
import '../../services/locator.dart';
import '../../styles/styles.dart';

class ProfileInfo extends StatefulWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  final TextEditingController _firstname = TextEditingController();

  final TextEditingController _lastname = TextEditingController();
  final UserService _us = locator<UserService>();

  bool isSelected = false;
  late Color selectedOne = Colors.white;
  late List<String> locations = ['CHENNAI', 'STOCKHOLM'];
  late List<String> locationimages = [
    'assets/chennai.svg',
    'assets/stockholm.svg',
  ];
  int selected = 2;

  late String location = '';
  final StreamController<bool> _stream = StreamController<bool>();

  bool _validate() {
    if (_lastname.text.length > 4 &&
        _firstname.text.length > 3 &&
        location.isNotEmpty) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    Timer.periodic(
      const Duration(milliseconds: 10),
      (Timer t) => _stream.add(_validate()),
    );
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        floatingActionButton: StreamBuilder<Object>(
          stream: _stream.stream,
          builder: (context, snapshot) => GestureDetector(
            onTap: () async {
              final Isar _isar = locator<AppViewModel>().isar;

              List<User> users = await _isar.users.where().findAll();
              // print('users from isar -> $users');
              User? isarUser = await _isar.users.get(1);

              _us.updateUsertoDb(
                User(
                  id: 1,
                  userId: isarUser!.userId,
                  firstname: _firstname.text,
                  lastname: _lastname.text,
                  location: location,
                  imageUrl: '',
                  insuranceNum: '',
                  email: '',
                  dob: '',
                  pfNum: '',
                ),
              );
              //print('Isar user -> $isarUser');

              _us.addProfile(_firstname.text, _lastname.text, location);
              snapshot.data == true
                  ? Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilePhotoPage()))
                  : null;
            },
            child: NavigationButton(
              text: 'Next',
              buttonColor: snapshot.data == true
                  ? ButtonColors.nextButton
                  : ButtonColors.disableButton,
              buttonTextStyle: AppFonts.buttonTextBB,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        resizeToAvoidBottomInset: true,
        backgroundColor: AppColors.appthemeColor,
        body: CustomPaint(
          painter: BackgroundGridLines(heightGap: 30, widthGap: 15),
          child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const ProfileAppBar(),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin:
                          const EdgeInsets.only(left: 24, right: 23, top: 28),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'First Name',
                              style: AppFonts.whiteheader,
                            ),
                            InputTextFieldWidget(
                              fieldName: 'FIRST_NAME_FIELD',
                              hintText: 'ie. John',
                              keyboardType: TextInputType.text,
                              textController: _firstname,
                              labelColor: TextColors.hintDull,
                              textFieldColor: ContainerColors.primaryTextField,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Text(
                              'Last Name',
                              style: AppFonts.whiteheader,
                            ),
                            InputTextFieldWidget(
                              fieldName: 'LAST_NAME_FIELD',
                              hintText: 'ie. Watson',
                              keyboardType: TextInputType.text,
                              textController: _lastname,
                              labelColor: TextColors.hintDull,
                              textFieldColor: ContainerColors.primaryTextField,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Text(
                              'Location',
                              style: AppFonts.whiteheader,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                                height: 61,
                                width: MediaQuery.of(context).size.width,
                                color: Colors.transparent,
                                child: ListView.separated(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) =>
                                      GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selected = index;
                                        location = locations[index];
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: MediaQuery.of(context).size.width /
                                          2.5,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 2,
                                            color: selected == index
                                                ? selectedOne
                                                : Colors.transparent),
                                        borderRadius: BorderRadii.radius8px,
                                        color: ContainerColors.primaryTextField,
                                      ),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(
                                              locationimages[index],
                                              height: 30,
                                              width: 20,
                                              color: selected == index
                                                  ? TextColors.primaryColor
                                                  : TextColors.hintDull,
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            Text(locations[index],
                                                style: AppFonts.inputTextWR
                                                    .copyWith(
                                                        color: selected == index
                                                            ? TextColors
                                                                .primaryColor
                                                            : TextColors
                                                                .hintDull)),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(width: 27),
                                  itemCount: 2,
                                )),
                          ]),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}

// addToIsar(
//     String _firstname, String _lastname, String location, Isar isar) async {
//   final updateDetails = User(
//       userid: '',
//       firstname: _firstname,
//       lastname: _lastname,
//       location: location,
//       imageUrl: '',
//       insuranceNum: '',
//       email: 'email',
//       pfNum: ' pfNum',
//       dob: 'dob');

//   await isar.writeTxn((isar) async {
//     isar.users.put(updateDetails);
//   });

//   isar.users.where().findAll().then((value) => value.forEach((element) {
//         print(element);
//       }));
// }

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 47, top: 40, bottom: 23),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 44,
              color: const Color(0xff000000).withOpacity(0.6),
            ),
          ],
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(24),
          ),
          color: ContainerColors.white,
        ),
        child: Row(
          children: [
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
                  'Profile info',
                  style: AppFonts.appHeaderBlack,
                ),
                Text(
                  'Add your profile info (1/2)',
                  style: AppFonts.hintText14,
                )
              ],
            )
          ],
        ));
  }
}
