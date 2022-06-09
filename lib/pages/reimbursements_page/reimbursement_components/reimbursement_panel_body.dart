import 'package:employee_app/common_widgets/tab_delegate.dart';
import 'package:flutter/material.dart';

class ReimbursementPanelBody extends StatefulWidget {
  const ReimbursementPanelBody({Key? key}) : super(key: key);

  @override
  State<ReimbursementPanelBody> createState() => _ReimbursementPanelBodyState();
}

class _ReimbursementPanelBodyState extends State<ReimbursementPanelBody>
    with TickerProviderStateMixin {
  TabController? _expensesTabController;
  List<String> tabText = ['Pending', 'Approved', 'AllRequests'];

  @override
  void initState() {
    _expensesTabController = TabController(length: tabText.length, vsync: this);
    super.initState();
  }

  List<Widget> tabBody = <Widget>[
    const SizedBox.shrink(),
    const SizedBox.shrink(),
    const SizedBox.shrink()
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TabBarDelegate(controller: _expensesTabController, text: tabText),
        Expanded(
          child: TabBarView(
            controller: _expensesTabController,
            children: tabBody.map((e) => e).toList(),
          ),
        ),
      ],
    );
  }
}
