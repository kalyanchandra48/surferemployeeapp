import 'dart:async';
import 'package:flutter/material.dart';
import 'leaves_page_components.dart';
import 'package:employee_app/services/calendar_events.dart';
import 'package:intl/intl.dart';

class ApplyLeaveBottomSheetBody extends StatefulWidget {
  const ApplyLeaveBottomSheetBody({
    Key? key,
  }) : super(key: key);

  @override
  State<ApplyLeaveBottomSheetBody> createState() =>
      _ApplyLeaveBottomSheetBodyState();
}

class _ApplyLeaveBottomSheetBodyState extends State<ApplyLeaveBottomSheetBody> {
  final TextEditingController _reasonTextController = TextEditingController();

  final TextEditingController _descriptionTextController =
      TextEditingController();

  final TextEditingController startdateController = TextEditingController();
  final TextEditingController starttimeController = TextEditingController();
  final TextEditingController enddateController = TextEditingController();
  final TextEditingController endtimeController = TextEditingController();
  final StreamController<bool> _stream = StreamController<bool>.broadcast();
  bool checkRequestFields() {
    if (_descriptionTextController.text.length > 20 &&
        startdateController.text.length > 6 &&
        starttimeController.text.length > 6 &&
        enddateController.text.length > 6 &&
        endtimeController.text.length > 6 &&
        _reasonTextController.text.length > 6) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void dispose() {
    startdateController.dispose();
    endtimeController.dispose();
    enddateController.dispose();
    starttimeController.dispose();
    _reasonTextController.dispose();
    _descriptionTextController.dispose();
    super.dispose();
  }

  String starttime = '';
  String applied = '';
  String endtime = '';
  DateFormat dateFormat = DateFormat("dd MMMM yyyy HH:mm");
  CalendarService calendarService = CalendarService();
  @override
  Widget build(BuildContext context) {
    Timer.periodic(
      const Duration(milliseconds: 10),
      (Timer t) => _stream.add(
        checkRequestFields(),
      ),
    );

    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.05,
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            Column(
              children: [
                Visibility(
                  visible: applied.isEmpty,
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
                                  controller: startdateController,
                                  hintText: 'Start Date',
                                  width: MediaQuery.of(context).size.width / 2,
                                ),
                                TimeSelectorWidget(
                                  controller: starttimeController,
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
                                  controller: enddateController,
                                  hintText: 'End Date',
                                  width: MediaQuery.of(context).size.width / 2,
                                ),
                                TimeSelectorWidget(
                                  controller: endtimeController,
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
                        StreamBuilder<Object>(
                            stream: _stream.stream,
                            builder: (context, snapshot) {
                              return GestureDetector(
                                onTap: () {
                                  String starttime = startdateController.text +
                                      ' ' +
                                      starttimeController.text;
                                  String endtime = enddateController.text +
                                      ' ' +
                                      endtimeController.text;
                                  if (snapshot.data == true) {
                                    calendarService.insert(
                                      _reasonTextController.text,
                                      _descriptionTextController.text,
                                      starttime,
                                      endtime,
                                    );
                                    setState(() {
                                      applied == 'Applied';
                                    });
                                  }
                                },
                                child: NavigationButton(
                                    buttonColor: snapshot.data == true
                                        ? ButtonColors.nextButton
                                        : ButtonColors.disableButton,
                                    text: 'Apply',
                                    buttonTextStyle: snapshot.data == false
                                        ? AppFonts.buttonTextWR.copyWith(
                                            color: TextColors.disableButtonText)
                                        : AppFonts.buttonTextWR.copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: TextColors.appHeaderBlack)),
                              );
                            }),
                      ],
                    ),
                  ),
                ),
                Visibility(
                    visible: applied.isNotEmpty,
                    child: Center(
                      child: Container(
                          height: 40, width: 50, color: Colors.yellow),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
