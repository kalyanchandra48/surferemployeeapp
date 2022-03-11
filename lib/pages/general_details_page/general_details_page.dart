import 'package:employee_app/common_widgets/input_textfield_widget.dart';
import 'package:employee_app/common_widgets/navigation_button.dart';
import 'package:employee_app/pages/bottom_nav/bottom_nav.dart';
import 'package:employee_app/pages/login_page/login_page.dart';
import 'package:employee_app/pages/personal_details_page/personal_details_page_components/personal_details_page_components.dart';
import 'package:employee_app/services/auth.dart';
import 'package:employee_app/services/locator.dart';
import 'package:flutter/material.dart';

class GeneralDetailsPage extends StatelessWidget {
  GeneralDetailsPage({Key? key}) : super(key: key);
  final AuthService _auth = locator<AuthService>();
  final TextEditingController _pfTextController = TextEditingController();
  final TextEditingController _insuranceTextController =
      TextEditingController();
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
                      'Add your general details',
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
                fieldName: 'PF_FIELD',
                labelText: 'PF Number',
                keyboardType: TextInputType.number,
                textController: _pfTextController,
                textFieldColor: ContainerColors.primaryTextField,
                labelColor: Colors.white,
              ),
              InputTextFieldWidget(
                fieldName: 'INSURANCE_FIELD',
                labelText: 'Insurance Number',
                textController: _insuranceTextController,
                keyboardType: TextInputType.number,
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
