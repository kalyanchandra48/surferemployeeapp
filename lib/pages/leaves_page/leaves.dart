import 'package:flutter/material.dart';
import 'leaves_page_components/leaves_page_components.dart';

class LeavesPage extends StatefulWidget {
  const LeavesPage({Key? key}) : super(key: key);

  @override
  State<LeavesPage> createState() => _LeavesPageState();
}

class _LeavesPageState extends State<LeavesPage> with TickerProviderStateMixin {
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
          herotag: 'leaves',
          crossFade: crossFade,
          bottomSheetBody: ApplyLeaveBottomSheetBody(),
          header: 'Leaves',
          subHeader: '17 available',
          imageUrl: 'assets/calendar.png',
          innerShade: ContainerColors.redShadelight,
          outerShade: ContainerColors.redShade,
        ),
      ),
      body: CustomPaint(
        painter: BackgroundGridLines(heightGap: 30, widthGap: 15),
        child: Stack(
          children: [
            PanelBackgroundImage(
              animation: _animation,
              bgImageUrl: 'assets/calendar.png',
              innerShadeColor: ContainerColors.redShadelight,
              outerShadeColor: ContainerColors.redShade,
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
              panel: const LeavesPageBody(),
              onPanelOpened: () {
                _controller.reset();
                setState(() {
                  crossFade = true;
                });
              },
              onPanelSlide: (d) {
                _controller.forward();
                setState(
                  () {
                    crossFade = false;
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
