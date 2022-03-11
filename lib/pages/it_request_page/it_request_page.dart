import 'package:employee_app/common_widgets/common_widgets_component.dart';
import 'package:employee_app/services/it_request.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'it_request_page_components/it_request_page_body.dart';
import 'it_request_page_components/it_request_sheet.dart';

class ITRequestPage extends StatefulWidget {
  const ITRequestPage({Key? key}) : super(key: key);

  @override
  State<ITRequestPage> createState() => _ITRequestPageState();
}

class _ITRequestPageState extends State<ITRequestPage>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 700),
    vsync: this,
  );

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticInOut,
  );
  bool crossFade = true;
  final PanelController _panelController = PanelController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appthemeColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: ThemeAppBar(
          herotag: 'ITRequest',
          bottomSheetBody: const ITRequestSheet(),
          crossFade: crossFade,
          header: 'IT requests',
          subHeader: '2 pending',
          imageUrl: 'assets/it_request.png',
          innerShade: Colors.white,
          outerShade: ContainerColors.bgBlueShadow,
        ),
      ),
      body: CustomPaint(
        painter: BackgroundGridLines(heightGap: 30, widthGap: 15),
        child: Stack(
          children: [
            PanelBackgroundImage(
              bgImageUrl: 'assets/it_request.png',
              animation: _animation,
              innerShadeColor: Colors.white,
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
              borderRadius: BorderRadii.radius24px,
              panel: const ITRequestPageBody(),
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
            )
          ],
        ),
      ),
    );
  }
}
