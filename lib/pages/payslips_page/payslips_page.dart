import 'package:employee_app/common_widgets/background_grid_lines.dart';
import 'package:employee_app/common_widgets/panel_bg_image.dart';
import 'package:employee_app/common_widgets/theme_app_bar_widget.dart';
import 'package:employee_app/pages/payslips_page/payslips_page_component/payslips_page_body.dart';
import 'package:employee_app/pages/payslips_page/payslips_page_component/tab_body/payslip_tab_body.dart';
import 'package:employee_app/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class PayslipsPage extends StatefulWidget {
  const PayslipsPage({Key? key}) : super(key: key);

  @override
  State<PayslipsPage> createState() => _PayslipsPageState();
}

class _PayslipsPageState extends State<PayslipsPage>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 700),
    vsync: this,
  );

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticInOut,
  );
  late final PanelController _panelController = PanelController();
  bool crossFade = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appthemeColor,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: ThemeAppBar(
            herotag: 'payslip',
            crossFade: crossFade,
            bottomSheetBody: Container(),
            header: 'Payslips',
            subHeader: '19 published',
            imageUrl: 'assets/files.png',
            innerShade: ContainerColors.yellowShadelight,
            outerShade: ContainerColors.yellowShade,
          )),
      body: CustomPaint(
        painter: BackgroundGridLines(heightGap: 30, widthGap: 15),
        child: Stack(
          children: [
            PanelBackgroundImage(
              animation: _animation,
              bgImageUrl: 'assets/files.png',
              innerShadeColor: ContainerColors.yellowShadelight,
              outerShadeColor: ContainerColors.yellowShade,
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
              borderRadius: BorderRadii.radius24px,
              panel: const PaySlipPanelBody(),
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
        ),
      ),
    );
  }
}
