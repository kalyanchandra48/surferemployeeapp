import 'dart:async';
import 'package:employee_app/common_widgets/input_textfield_widget.dart';
import 'package:employee_app/common_widgets/navigation_button.dart';
import 'package:employee_app/models/auth_status.dart';
import 'package:employee_app/pages/personal_details_page/personal_details_page.dart';
import 'package:employee_app/services/auth.dart';
import 'package:employee_app/services/locator.dart';
import 'package:employee_app/styles/styles.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final AuthService _auth = locator<AuthService>();
  @override
  Widget build(BuildContext context) {
    AuthStatus _status = Provider.of<AuthStatus>(context);

    if (_status.status == AUTH_STATUS.VERIFICATION_COMPLETED) {
      Timer(const Duration(milliseconds: 100), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => PersonalDetailPage(),
          ),
        );
      });
    }
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 9,
              ),
              Text(
                'Employee App',
                style: AppFonts.appHeaderBlack,
              ),
              const SizedBox(
                height: 10,
              ),
              InputTextFieldWidget(
                  labelText: 'Email',
                  textController: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  textFieldColor: const Color(0xff1849D8).withOpacity(0.05),
                  labelColor: Colors.black,
                  fieldName: 'EMAIL_ID'),
              InputTextFieldWidget(
                  labelText: 'Password',
                  labelColor: Colors.black,
                  textController: _passwordController,
                  keyboardType: TextInputType.emailAddress,
                  textFieldColor: const Color(0xff1849D8).withOpacity(0.05),
                  fieldName: 'PASSWORD'),
              const SizedBox(
                height: 50,
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
                child: NavigationButton(
                  buttonColor: ButtonColors.themeButton,
                  text: 'Sign in with email',
                  buttonTextStyle: AppFonts.buttonTextWR,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Forgot Password?',
                style: AppFonts.smallText12,
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                color: Color(0xff9D9D9D),
              ),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () async {
                  await _auth.signInWithGoogle();
                  print('tapped on login with google');
                },
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: AppColors.appthemeColor, width: 2.5),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/google_icon.svg'),
                      Text(
                        '  Sign in with Google',
                        style: AppFonts.themeText,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
