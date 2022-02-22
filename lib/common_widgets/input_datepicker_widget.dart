import 'package:employee_app/styles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class InputDatePickerWidget extends StatefulWidget {
  final String labelText;
  final String fieldName;
  final TextEditingController textController;
  const InputDatePickerWidget(
      {Key? key,
      required this.labelText,
      required this.textController,
      required this.fieldName})
      : super(key: key);

  @override
  State<InputDatePickerWidget> createState() => _InputDatePickerWidgetState();
}

class _InputDatePickerWidgetState extends State<InputDatePickerWidget> {
  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => Container(
              height: 216,
              padding: const EdgeInsets.only(top: 6.0),
              // The Bottom margin is provided to align the popup above the system navigation bar.
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              // Provide a background color for the popup.
              color: CupertinoColors.systemBackground.resolveFrom(context),
              // Use a SafeArea widget to avoid system overlaps.
              child: SafeArea(
                top: false,
                child: child,
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: Container(
        padding: const EdgeInsets.only(left: 10),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: ContainerColors.primaryTextField,
            borderRadius: BorderRadius.circular(12)),
        child: TextFormField(
          onTap: () {
            if (widget.fieldName == 'DOB_FIELD') {
              _showDialog(CupertinoDatePicker(
                  initialDateTime: DateTime.now(),
                  maximumDate: DateTime(2100),
                  minimumDate: DateTime(1990),
                  mode: CupertinoDatePickerMode.date,
                  onDateTimeChanged: (DateTime date) {
                    widget.textController.text =
                        DateFormat('dd/MM/yy').format(date);
                  }));

              // showDatePicker(
              //         context: context,
              //         initialDate: DateTime.now(),
              //         firstDate: DateTime(1900),
              //         lastDate: DateTime(2100))
              //     .then((value) => setState(() {
              //           widget.textController.text =
              //               DateFormat('dd/MM/yy').format(value!);
              //         }));
            }
          },
          style: AppFonts.inputTextWR,
          cursorHeight: 18,
          controller: widget.textController,
          decoration: InputDecoration(
            isDense: true,
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            border: InputBorder.none,
            label: Text(widget.labelText),
            labelStyle: AppFonts.labelTextWR.copyWith(
              height: 0,
            ),
          ),
        ),
      ),
    );
  }
}
