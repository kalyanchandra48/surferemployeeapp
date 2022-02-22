import 'package:employee_app/common_widgets/tab_delegate.dart';
import 'package:employee_app/pages/leaves_page/leaves_page_components.dart/overview_tab_body.dart';
import 'package:employee_app/pages/leaves_page/leaves_page_components.dart/taken_leaves_tab_body.dart';
import 'package:flutter/material.dart';
import 'holidays_tab_body.dart';

class LeavesPageBody extends StatefulWidget {
  const LeavesPageBody({Key? key}) : super(key: key);

  @override
  _LeavesPageBodyState createState() => _LeavesPageBodyState();
}

class _LeavesPageBodyState extends State<LeavesPageBody>
    with TickerProviderStateMixin {
  TabController? _leavesTabController;

  List<String> tabText = <String>['Overview', 'Taken', 'Holidays'];

  List<Widget> tabBody = <Widget>[
    OverviewTabBody(),
    const TakenLeavesTabBody(),
    const HolidaysTabBody(),
  ];

  @override
  void initState() {
    _leavesTabController = TabController(length: tabText.length, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      TabBarDelegate(text: tabText, controller: _leavesTabController),
      Expanded(
        child: TabBarView(
          controller: _leavesTabController,
          children: tabBody.map((e) => e).toList(),
        ),
      ),
    ]);
  }
}
