import 'package:employee_app/common_widgets/navigation_button.dart';
import 'package:employee_app/common_widgets/textfield_widget.dart';
import 'package:employee_app/styles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'leave_date_time_widget.dart';

class ApplyLeaveBottomSheetBody extends StatelessWidget {
  ApplyLeaveBottomSheetBody({
    Key? key,
  }) : super(key: key);

  final TextEditingController _reasonTextController = TextEditingController();
  final TextEditingController _descriptionTextController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
        padding: const EdgeInsets.all(24),
        height: MediaQuery.of(context).size.height / 1.05,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                    width: 120,
                    child: Divider(
                      color: DividerColors.primaryGrey,
                      thickness: 4,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Apply for leave',
                  style: AppFonts.largeTextBB,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                Text(
                  'Reason for leave',
                  style: AppFonts.mediumTextBB,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFieldWidget(
                    maxLines: 1,
                    hintText: 'Enter Reason here',
                    textController: _reasonTextController),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Date for leaves',
                  style: AppFonts.mediumTextBB,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LeaveDateTimeWidget(
                      hintText: 'Start Date',
                      width: MediaQuery.of(context).size.width / 2,
                    ),
                    LeaveDateTimeWidget(
                      hintText: 'Start Time',
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LeaveDateTimeWidget(
                      hintText: 'End Date',
                      width: MediaQuery.of(context).size.width / 2,
                    ),
                    LeaveDateTimeWidget(
                      hintText: 'End Time',
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Describe reason for leave',
                  style: AppFonts.mediumTextBB,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFieldWidget(
                    maxLines: 5,
                    hintText: 'Describe your reason',
                    textController: _descriptionTextController),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            NavigationButton(
                buttonColor: ButtonColors.disableButton,
                text: 'Apply',
                buttonTextStyle: AppFonts.buttonTextWR
                    .copyWith(color: TextColors.disableButtonText))
          ],
        ),
      ),
    );
  }
}
