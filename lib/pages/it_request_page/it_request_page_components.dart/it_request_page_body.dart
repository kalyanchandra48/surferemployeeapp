import 'package:employee_app/common_widgets/tab_delegate.dart';
import 'package:employee_app/pages/it_request_page/it_request_page_components.dart/tab_body/pending_tab_body.dart';
import 'package:employee_app/pages/it_request_page/it_request_page_components.dart/tab_body/tab_body_components.dart';
import 'package:flutter/material.dart';

class ITRequestPageBody extends StatefulWidget {
  const ITRequestPageBody({Key? key}) : super(key: key);

  @override
  State<ITRequestPageBody> createState() => _ITRequestPageBodyState();
}

class _ITRequestPageBodyState extends State<ITRequestPageBody>
    with TickerProviderStateMixin {
  TabController? _itRequestTabController;
  List<String> tabText = ['Pending', 'Approved', 'Denied', 'Cancelled'];
  List<Widget> tabBody = <Widget>[
    const PendingTabBody(),
    const ApprovedTabBody(),
    const DeniedTabBody(),
    const CancelledTabBody(),
  ];
  @override
  void initState() {
    _itRequestTabController =
        TabController(length: tabText.length, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TabBarDelegate(controller: _itRequestTabController, text: tabText),
        Expanded(
          child: TabBarView(
            controller: _itRequestTabController,
            children: tabBody.map((e) => e).toList(),
          ),
        ),
      ],
    );
  }
}
