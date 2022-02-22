import 'dart:async';
import 'package:employee_app/common_widgets/navigation_button.dart';
import 'package:employee_app/common_widgets/textfield_widget.dart';
import 'package:employee_app/styles/styles.dart';
import 'package:flutter/material.dart';

class ITRequestSheet extends StatefulWidget {
  const ITRequestSheet({
    Key? key,
  }) : super(key: key);

  @override
  State<ITRequestSheet> createState() => _ITRequestSheetState();
}

class _ITRequestSheetState extends State<ITRequestSheet> {
  String? dropDownvalue;
  final TextEditingController descriptionController = TextEditingController();
  final StreamController<bool> _stream = StreamController<bool>();

  bool checkRequestFields() {
    if (descriptionController.text.isNotEmpty && dropDownvalue != null) {
      return true;
    } else {
      return false;
    }
  }

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
      child: Stack(
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
                      color:
                          ContainerColors.secondaryTextField.withOpacity(0.09),
                      border:
                          Border.all(color: BorderColor.textField, width: 2),
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
                      style: AppFonts.hintText14.copyWith(fontSize: 16),
                    ),
                    style: AppFonts.smallText12.copyWith(
                        fontSize: 16, color: TextColors.secondaryColor),
                    enableFeedback: false,
                    alignment: AlignmentDirectional.topEnd,
                    isExpanded: true,
                    value: dropDownvalue,
                    underline: Container(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropDownvalue = newValue;
                      });
                    },
                    items: <String>['One', 'Two', 'Free', 'Four']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
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
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            child: StreamBuilder<Object>(
                stream: _stream.stream,
                builder: (context, snapshot) {
                  return NavigationButton(
                      buttonColor: snapshot.data == false
                          ? ButtonColors.disableButton
                          : ButtonColors.nextButton,
                      text: 'Send Request',
                      buttonTextStyle: AppFonts.buttonTextBB.copyWith(
                          color: snapshot.data == false
                              ? TextColors.disableButtonText
                              : TextColors.primaryColor));
                }),
          ),
        ],
      ),
    );
  }
}
