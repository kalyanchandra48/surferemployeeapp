import 'package:employee_app/styles/styles.dart';
import 'package:flutter/material.dart';

class InputTextFieldWidget extends StatelessWidget {
  final String hintText;
  final String fieldName;
  final TextEditingController textController;
  final TextInputType keyboardType;
  final Color textFieldColor;
  final Color labelColor;
  const InputTextFieldWidget(
      {Key? key,
      required this.hintText,
      required this.textFieldColor,
      required this.textController,
      required this.keyboardType,
      required this.labelColor,
      required this.fieldName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        height: 52,
        padding: const EdgeInsets.only(
          left: 12,
        ),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: textFieldColor, borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: TextFormField(
            keyboardType: keyboardType,
            style:
                AppFonts.inputTextWR.copyWith(color: TextColors.primaryColor),
            cursorHeight: 18,
            controller: textController,
            decoration: InputDecoration(
              isDense: true,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              border: InputBorder.none,
              hintText: hintText,
              hintStyle:
                  AppFonts.labelTextWR.copyWith(height: 0, color: labelColor),
            ),
          ),
        ),
      ),
    );
  }
}
