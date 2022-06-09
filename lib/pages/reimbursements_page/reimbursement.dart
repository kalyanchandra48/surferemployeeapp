import 'package:employee_app/common_widgets/background_grid_lines.dart';
import 'package:employee_app/common_widgets/panel_bg_image.dart';
import 'package:employee_app/common_widgets/theme_app_bar_widget.dart';
import 'package:employee_app/pages/reimbursements_page/reimbursement_components/apply_reimbursement_page.dart';
import 'package:employee_app/pages/reimbursements_page/reimbursement_components/reimbursement_panel_body.dart';
import 'package:employee_app/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ReimbursementsPage extends StatefulWidget {
  const ReimbursementsPage({Key? key}) : super(key: key);

  @override
  State<ReimbursementsPage> createState() => _ReimbursementsPageState();
}

class _ReimbursementsPageState extends State<ReimbursementsPage>
    with TickerProviderStateMixin {
  bool crossFade = true;

  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 700),
    vsync: this,
  );

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticInOut,
  );
  late final PanelController _panelController = PanelController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.appthemeColor,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: ThemeAppBar(
            herotag: 'payslip',
            crossFade: crossFade,
            bottomSheetBody: ApplyReimbursementsPage(),
            header: 'Expenses',
            subHeader: '19 available',
            imageUrl: 'assets/card.png',
            innerShade: ContainerColors.bluelight,
            outerShade: ContainerColors.bluelight,
          )),
      body: CustomPaint(
          painter: BackgroundGridLines(heightGap: 30, widthGap: 15),
          child: Stack(
            children: [
              PanelBackgroundImage(
                animation: _animation,
                bgImageUrl: 'assets/cards.png',
                innerShadeColor: ContainerColors.bluelight,
                outerShadeColor: ContainerColors.bluelight,
              ),
              SlidingUpPanel(
                boxShadow: [
                  BoxShadow(
                      color: const Color(0xff05113C).withOpacity(0.3),
                      spreadRadius: 20,
                      blurRadius: 15),
                ],
                parallaxEnabled: true,
                parallaxOffset: 1,
                controller: _panelController,
                maxHeight: 900,
                minHeight: MediaQuery.of(context).size.height / 1.8,
                defaultPanelState: PanelState.OPEN,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24)),
                panel: const ReimbursementPanelBody(),
                onPanelOpened: () {
                  _controller.reset();
                  setState(() {
                    crossFade = true;
                  });
                },
                onPanelSlide: (d) {
                  _controller.forward();
                  setState(() {
                    crossFade = false;
                  });
                },
              ),
            ],
          )),
    );
  }
}
