import 'package:employee_app/common_widgets/background_grid_lines.dart';
import 'package:flutter/material.dart';
import '../../common_widgets/input_textfield_widget.dart';
import '../../common_widgets/navigation_button.dart';
import '../../styles/styles.dart';
import 'profile_photo_page.dart';

class ProfileInfo extends StatefulWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  final TextEditingController _firstname = TextEditingController();

  final TextEditingController _lastname = TextEditingController();

  static String dropdownValue = 'Chennai';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        floatingActionButton: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePhotoPage()),
            );
          },
          child: NavigationButton(
            text: 'Next',
            buttonColor: ButtonColors.nextButton,
            buttonTextStyle: AppFonts.buttonTextBB,
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
                          const EdgeInsets.only(left: 24, right: 24, top: 28),
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
                              padding: const EdgeInsets.only(
                                right: 12,
                              ),
                              height: 52,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadii.radius8px,
                                  color: ContainerColors.primaryTextField),
                              child: DropdownButton<String>(
                                value: dropdownValue,
                                icon: const Padding(
                                  padding: EdgeInsets.only(left: 210),
                                  child: Icon(Icons.expand_more_outlined,
                                      color: Colors.white),
                                ),
                                style: AppFonts.mediumTextBB,
                                underline: Container(
                                  height: 0,
                                  color: Colors.deepPurpleAccent,
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                },
                                items: <String>[
                                  'Chennai',
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            12, 12, 0, 12),
                                        child: Text(value)),
                                  );
                                }).toList(),
                              ),
                            ),
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

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 47, top: 40, bottom: 23),
        decoration: BoxDecoration(
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
