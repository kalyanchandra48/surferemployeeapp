import 'package:flutter/material.dart';
import './leaves_page_components.dart';

class LeavesPageBody extends StatefulWidget {
  const LeavesPageBody({Key? key}) : super(key: key);

  @override
  _LeavesPageBodyState createState() => _LeavesPageBodyState();
}

class _LeavesPageBodyState extends State<LeavesPageBody>
    with TickerProviderStateMixin {
  TabController? _leavesTabController;

  List<String> tabText = <String>[
    'Overview',
    'Taken',
    'Holidays',
  ];

  List<Widget> tabBody = <Widget>[
    OverviewTabBody(),
    TakenLeavesTabBody(),
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
      TabBarDelegate(
          text: tabText,
          controller: _leavesTabController),
      Expanded(
        child: TabBarView(
          controller: _leavesTabController,
          children: tabBody.map((e) => e).toList(),
        ),
      ),
    ]);
  }
}
