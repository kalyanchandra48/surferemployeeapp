import 'package:employee_app/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

import 'package:intl/intl.dart';

class LeaveDateTimeWidget extends StatefulWidget {
  final String hintText;
  final double width;
  final TextEditingController controller;

  const LeaveDateTimeWidget({
    required this.hintText,
    required this.width,
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  _LeaveDateTimeWidgetState createState() => _LeaveDateTimeWidgetState();
}

class _LeaveDateTimeWidgetState extends State<LeaveDateTimeWidget> {
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
    return Container(
      width: widget.width,
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      decoration: BoxDecoration(
          color: ContainerColors.secondaryTextField.withOpacity(0.09),
          border: Border.all(color: BorderColor.borderprimarygrey, width: 1.5),
          borderRadius: BorderRadii.radius8px),
      child: TextFormField(
        onTap: () {
            _showDialog(CupertinoDatePicker(
                initialDateTime: DateTime.now(),
                maximumDate: DateTime(2100),
                minimumDate: DateTime(1990),
                mode: CupertinoDatePickerMode.date,
                onDateTimeChanged: (DateTime date) {
                  widget.controller.text = DateFormat('dd MMMM yyyy').format(date);
                }));
        },
        controller: widget.controller,
        //controller: ,
        style: AppFonts.smallText12.copyWith(
          fontSize: 16,
          color: TextColors.secondaryColor,
        ),
        textCapitalization: TextCapitalization.sentences,
        maxLines: 1,
        decoration: InputDecoration(
            // suffixIcon: const Icon(
            //   Icons.keyboard_arrow_down,
            //   color: Colors.black,
            // ),
            border: InputBorder.none,
            hintText: widget.hintText,
            hintStyle: AppFonts.hintText14.copyWith(fontSize: 16)),
      ),
    );
  }
}
