import 'package:employee_app/styles/styles.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final int maxLines;
  final TextEditingController textController;

  const TextFieldWidget({
    Key? key,
    required this.maxLines,
    required this.hintText,
    required this.textController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      decoration: BoxDecoration(
          color: ContainerColors.secondaryTextField.withOpacity(0.09),
          border: Border.all(color: BorderColor.textField, width: 1.5),
          borderRadius: BorderRadii.radius8px),
      child: TextFormField(
        controller: textController,
        style: AppFonts.smallText12.copyWith(
          fontSize: 16,
          color: TextColors.secondaryColor,
        ),
        textCapitalization: TextCapitalization.sentences,
        maxLines: maxLines,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: AppFonts.hintText14.copyWith(fontSize: 16)),
      ),
    );
  }
}
