import 'dart:async';
import 'package:employee_app/common_widgets/navigation_button.dart';
import 'package:employee_app/common_widgets/textfield_widget.dart';
import 'package:employee_app/models/it_request/post_request.dart';
import 'package:employee_app/services/it_request.dart';
import 'package:employee_app/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../models/response.dart';

class ApplyITRequestBottomSheet extends StatefulWidget {
  const ApplyITRequestBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  State<ApplyITRequestBottomSheet> createState() =>
      _ApplyITRequestBottomSheetState();
}

class _ApplyITRequestBottomSheetState extends State<ApplyITRequestBottomSheet> {
  List<String> requestType = ['Gitlab', 'Ios Developer', 'Accessories'];
  Future<String> text = ITRequestService.fetchRequestType();
  @override
  void initState() {
    super.initState();
  }

  String? dropDownvalue;
  final TextEditingController descriptionController = TextEditingController();
  final StreamController<bool> _stream = StreamController<bool>();
  SurfResponse? respose;
  Color priorityChipBg = ContainerColors.unSelectedBgColor;
  Color chipBorderColor = BorderColor.borderprimarygrey;
  TextStyle chipTextStyle = AppFonts.hintText14;
  bool checkRequestFields() {
    if (descriptionController.text.length > 20 && dropDownvalue != null) {
      return true;
    } else {
      return false;
    }
  }

  List<String> requestPriority = ["High", "Medium", "Low"];
  String selectedType = '';
  List<Map<bool, String>> priority = [];
  Future<String> types = ITRequestService.fetchRequestType();

  @override
  Widget build(BuildContext context) {
    Timer.periodic(
      const Duration(milliseconds: 10),
      (Timer t) => _stream.add(
        checkRequestFields(),
      ),
    );
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: FutureBuilder<String>(
        future: text,
        builder: (context, snapshot) {
          return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                padding: const EdgeInsets.all(24),
                height: MediaQuery.of(context).size.height / 1.05,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Column(
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
                      'Make a request',
                      style: AppFonts.largeTextBB,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 20,
                    ),
                    AnimatedCrossFade(
                      sizeCurve: Curves.easeInOut,
                      firstCurve: Curves.easeInOut,
                      secondCurve: Curves.easeInOut,
                      firstChild: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Select the type of request',
                              style: AppFonts.mediumTextBB,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                ),
                                height: 50,
                                decoration: BoxDecoration(
                                    color: ContainerColors.secondaryTextField
                                        .withOpacity(0.09),
                                    border: Border.all(
                                        color: BorderColor.borderprimarygrey,
                                        width: 2),
                                    borderRadius: BorderRadii.radius8px),
                                child: DropdownButton<String>(
                                  itemHeight: 50,
                                  elevation: 1,
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 18,
                                  ),
                                  iconEnabledColor: Colors.black,
                                  hint: Text(
                                    'Select an option',
                                    style: AppFonts.hintText14
                                        .copyWith(fontSize: 16),
                                  ),
                                  style: AppFonts.smallText12.copyWith(
                                      fontSize: 16,
                                      color: TextColors.secondaryColor),
                                  enableFeedback: false,
                                  alignment: AlignmentDirectional.topEnd,
                                  isExpanded: true,
                                  value: dropDownvalue,
                                  underline: Container(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropDownvalue = newValue;
                                      selectedType = dropDownvalue!;
                                    });
                                  },
                                  items: requestType
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                )),
                          ]),
                      secondChild: Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width,
                          color: ContainerColors.primaryTextField,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/person.svg',
                                    color: IconColors.secondaryColor,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'assigned to Askin John Samuel',
                                    style: AppFonts.smallText12
                                        .copyWith(color: TextColors.hintText),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/clock.svg',
                                    color: IconColors.secondaryColor,
                                  ),
                                  Text(
                                    '  21 August 2021 | 11:30',
                                    style: AppFonts.smallText12
                                        .copyWith(color: TextColors.hintText),
                                  )
                                ],
                              )
                            ],
                          )),
                      crossFadeState: selectedType == ''
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                      duration: const Duration(milliseconds: 600),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 20,
                    ),
                    Text(
                      'Describe your request',
                      style: AppFonts.mediumTextBB,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFieldWidget(
                      textController: descriptionController,
                      hintText: 'Enter description',
                      maxLines: 10,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 20,
                    ),
                    Text(
                      'Request Priority',
                      style: AppFonts.mediumTextBB,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      child: ListView.separated(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                priorityChipBg =
                                    ContainerColors.selectedBgColor;
                                chipBorderColor =
                                    BorderColor.bordersecondaryBlue;
                                chipTextStyle = AppFonts.mediumTextBB.copyWith(
                                    color: TextColors.themeColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w900);
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 10),
                              decoration: BoxDecoration(
                                  color: priorityChipBg,
                                  borderRadius: BorderRadii.radius8px,
                                  border: Border.all(color: chipBorderColor)),
                              child: Text(
                                requestPriority[index],
                                style: chipTextStyle,
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(
                            width: 20,
                          );
                        },
                        itemCount: 3,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 20,
                child: StreamBuilder<Object>(
                  stream: _stream.stream,
                  builder: (context, snapshot) {
                    return GestureDetector(
                      onTap: () {
                        ITRequestService.postITRequest(PostRequest(
                            description: descriptionController.text,
                            priority: 'High',
                            requestType: dropDownvalue.toString()));
                      },
                      child: NavigationButton(
                          buttonColor: snapshot.data == false
                              ? ButtonColors.disableButton
                              : ButtonColors.nextButton,
                          text: 'Send Request',
                          buttonTextStyle: AppFonts.buttonTextBB.copyWith(
                              color: snapshot.data == false
                                  ? TextColors.disableButtonText
                                  : TextColors.primaryColor)),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
