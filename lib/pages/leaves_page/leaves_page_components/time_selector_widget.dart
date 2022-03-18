import 'package:flutter/material.dart';
import './leaves_page_components.dart';
import 'package:intl/intl.dart';

class TimeSelectorWidget extends StatefulWidget {
  final String hintText;
  final double width;
  final TextEditingController controller;
  const TimeSelectorWidget({
    required this.hintText,
    required this.width,
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  _TimeSelectorWidgetState createState() => _TimeSelectorWidgetState();
}

class _TimeSelectorWidgetState extends State<TimeSelectorWidget> {
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
        readOnly: true,
        onTap: () {
          _showDialog(
            CupertinoDatePicker(
              use24hFormat: true,
              mode: CupertinoDatePickerMode.time,
              onDateTimeChanged: (value) {
                widget.controller.text = DateFormat('HH:mm ').format(value) +
                    (DateTime.now().timeZoneName);
              },
              initialDateTime: DateTime.now(),
            ),
          );
        },
        controller: widget.controller,
        style: AppFonts.smallText12.copyWith(
          fontSize: 16,
          color: TextColors.secondaryColor,
        ),
        textCapitalization: TextCapitalization.sentences,
        maxLines: 1,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: widget.hintText,
            hintStyle: AppFonts.hintText14.copyWith(fontSize: 16)),
      ),
    );
  }
}
