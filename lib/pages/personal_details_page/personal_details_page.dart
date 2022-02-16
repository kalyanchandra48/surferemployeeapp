import 'package:employee_app/common_widgets/input_datepicker_widget.dart';
import 'package:employee_app/common_widgets/input_textfield_widget.dart';
import 'package:employee_app/common_widgets/navigation_button.dart';
import 'package:employee_app/pages/general_details_page/general_details_page.dart';
import 'package:employee_app/pages/personal_details_page/personal_details_page_components/personal_details_page_components.dart';
import 'package:flutter/material.dart';

class PersonalDetailPage extends StatelessWidget {
  PersonalDetailPage({Key? key}) : super(key: key);

  final TextEditingController _nameText = TextEditingController();
  final TextEditingController _dob = TextEditingController();
  final TextEditingController _bloodGroup = TextEditingController();

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
          onTap: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => GeneralDetailsPage()),
                (route) => false);
          },
          child: NavigationButton(
            text: 'Next >>',
            buttonColor: ButtonColors.nextButton,
            buttonTextStyle: AppFonts.buttonTextBB,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 65,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Profile',
                      style: AppFonts.appHeaderBlack
                          .copyWith(color: TextColors.primaryColor),
                    ),
                    Text(
                      'Add your personal details',
                      style: AppFonts.appSubHeader,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Personal Details',
                style: AppFonts.mediumTextBB
                    .copyWith(color: TextColors.primaryColor),
              ),
              InputTextFieldWidget(
                fieldName: 'NAME_FIELD',
                labelText: 'Name',
                keyboardType: TextInputType.text,
                textController: _nameText,
                labelColor: Colors.white,
                textFieldColor: ContainerColors.primaryTextField,
              ),
              InputDatePickerWidget(
                fieldName: 'DOB_FIELD',
                labelText: 'Date of Birth',
                textController: _dob,
              ),
              InputTextFieldWidget(
                fieldName: 'BLOOD_GRP_FIELD',
                labelText: 'Blood Group',
                textController: _bloodGroup,
                keyboardType: TextInputType.text,
                textFieldColor: ContainerColors.primaryTextField,
                labelColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
