import 'package:employee_app/models/it_request_status.dart';
import 'package:employee_app/styles/styles.dart';
import 'package:flutter/material.dart';

class RequestStatusInfo extends StatelessWidget {
  final ITRequestStatus status;
  RequestStatusInfo({required this.status, Key? key}) : super(key: key);

  late String text;
  late Color textColor;
  late Color bgColor;

  @override
  Widget build(BuildContext context) {
    switch (status) {
      case ITRequestStatus.APPROVED:
        text = 'APPROVED';
        textColor = RequestStatusTextColor.approved;
        bgColor = RequestStatusBgColor.approved;
        break;
      case ITRequestStatus.PENDING:
        text = 'PENDING FOR APPROVAL';
        textColor = RequestStatusTextColor.pending;
        bgColor = RequestStatusBgColor.pending;
        break;
      case ITRequestStatus.CANCELLED:
        text = 'CANCELLED';
        textColor = RequestStatusTextColor.cancelled;
        bgColor = RequestStatusBgColor.cancelled;
        break;
      case ITRequestStatus.DENIED:
        text = 'DENIED';
        textColor = RequestStatusTextColor.denied;
        bgColor = RequestStatusBgColor.denied;
        break;
      case ITRequestStatus.MORE_INFO:
        text = 'ADDITIONAL INFO REQUIRED';
        textColor = RequestStatusTextColor.moreinfo;
        bgColor = RequestStatusBgColor.moreinfo;
        break;
    }
    return Container(
      padding: EdgeInsets.symmetric(vertical: 9, horizontal: 12),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadii.radius8px,
      ),
      child: Text(
        text,
        style: AppFonts.smallestTextBW.copyWith(color: textColor),
      ),
    );
  }
}
