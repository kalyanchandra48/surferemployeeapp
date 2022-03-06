import 'package:employee_app/common_widgets/tab_delegate.dart';
import 'package:employee_app/pages/payslips_page/payslips_page_component/tab_body/payslip_tab_body.dart';
import 'package:flutter/material.dart';

class PaySlipPanelBody extends StatefulWidget {
  const PaySlipPanelBody({Key? key}) : super(key: key);

  @override
  State<PaySlipPanelBody> createState() => _PaySlipPanelBodyState();
}

class _PaySlipPanelBodyState extends State<PaySlipPanelBody>
    with TickerProviderStateMixin {
  TabController? _itRequestTabController;
  List<String> tabText = [
    'All Slips',
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
            children: const [PaySlipTabBody()],
          ),
        ),
      ],
    );
  }
}
