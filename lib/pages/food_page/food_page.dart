import 'package:employee_app/common_widgets/common_widgets_component.dart';
import 'package:employee_app/pages/food_page/food_page_components/food_page_panel_body.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../../styles/styles.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> with TickerProviderStateMixin {
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
          herotag: 'FoodUpdates',
          bottomSheetBody: Container(),
          crossFade: crossFade,
          header: 'Food',
          subHeader: '20 varieties',
          imageUrl: 'assets/success.png',
          innerShade: ContainerColors.yellowShadelight,
          outerShade: ContainerColors.yellowShade,
        ),
      ),
      body: CustomPaint(
        painter: BackgroundGridLines(heightGap: 30, widthGap: 15),
        child: Stack(
          children: [
            PanelBackgroundImage(
              bgImageUrl: 'assets/success.png',
              animation: _animation,
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
              defaultPanelState: PanelState.CLOSED,
              borderRadius: BorderRadii.radius24px,
              panel: const FoodPagePanelBody(),
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
