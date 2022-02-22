import 'package:employee_app/models/it_request_status.dart';
import 'package:employee_app/pages/home_page/home_page_components.dart/home_page_components.dart';
import 'package:employee_app/pages/it_request_page/it_request_page_components.dart/request_status_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ITRequestInfoWidget extends StatelessWidget {
  final String requestTitle;
  final ITRequestStatus requestStatus;
  final String assigneeName;
  const ITRequestInfoWidget(
      {required this.requestStatus,
      required this.requestTitle,
      required this.assigneeName,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadii.radius12px,
        boxShadow: [
          BoxShadow(
              color: const Color(0xff000000).withOpacity(0.08),
              blurRadius: 110,
              spreadRadius: 2),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            requestTitle,
            style: AppFonts.mediumTextBB,
          ),
          const SizedBox(
            height: 2,
          ),
          Row(
            children: [
              SvgPicture.asset(
                'assets/person.svg',
                color: IconColors.secondaryColor,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: ' assigned to',
                      style: AppFonts.smallText12
                          .copyWith(color: TextColors.hintText),
                    ),
                    TextSpan(
                      text: ' $assigneeName',
                      style: AppFonts.smallText12
                          .copyWith(color: TextColors.hintText),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          RequestStatusInfo(
            status: requestStatus,
          ),
        ],
      ),
    );
  }
}
