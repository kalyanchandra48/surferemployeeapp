import 'package:employee_app/common_widgets/background_grid_lines.dart';
import 'package:employee_app/pages/leaves_page/leaves_page_components.dart/leaves_page_body.dart';
import 'package:employee_app/pages/login_page/login_page_components.dart/login_page_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class LeavesPage extends StatefulWidget {
  LeavesPage({Key? key}) : super(key: key);

  @override
  State<LeavesPage> createState() => _LeavesPageState();
}

class _LeavesPageState extends State<LeavesPage> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 500),
    vsync: this,
  );

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );
  bool crossFade = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appthemeColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: CustomPaint(
          painter: BackgroundGridLines(heightGap: 5, widthGap: 15),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.05, left: 16),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 50,
                    color: Colors.transparent,
                    child: SvgPicture.asset(
                      'assets/arrow_left.svg',
                      height: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                AnimatedCrossFade(
                  duration: Duration(milliseconds: 400),
                  sizeCurve: Curves.ease,
                  firstCurve: Curves.easeOutBack,
                  crossFadeState: crossFade == true
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  firstChild: Container(
                    padding: const EdgeInsets.all(4),
                    height: 68,
                    //height: MediaQuery.of(context).size.height / 4,
                    width: 68,
                    //width: 159,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: ContainerColors.redShade,
                        ),
                        BoxShadow(
                          color: ContainerColors.redShadelight,
                          spreadRadius: -10,
                          blurRadius: 6.0,
                        ),
                      ],
                      shape: BoxShape.circle,
                      // borderRadius: BorderRadii.radius12px,
                    ),
                    child: Image.asset(
                      'assets/calendar.png',
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  secondChild: SizedBox(),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Leaves',
                      style:
                          AppFonts.appHeaderBlack.copyWith(color: Colors.white),
                    ),
                    Text(
                      '17 available',
                      style: AppFonts.labelSubTextBG,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: CustomPaint(
        painter: BackgroundGridLines(heightGap: 30, widthGap: 15),
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  FadeTransition(
                    opacity: _animation,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      height: 254,
                      width: 254,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: ContainerColors.redShade,
                          ),
                          BoxShadow(
                            color: ContainerColors.redShadelight,
                            spreadRadius: -50,
                            blurRadius: 20.0,
                          ),
                        ],
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/calendar.png',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SlidingUpPanel(
              boxShadow: [
                BoxShadow(
                    color: const Color(0xff05113C).withOpacity(0.3),
                    spreadRadius: 20,
                    blurRadius: 15),
              ],
              parallaxEnabled: true,
              maxHeight: 900,
              minHeight: 470,
              defaultPanelState: PanelState.OPEN,
              borderRadius: BorderRadii.radius24px,
              panel: const LeavesPageBody(),
              // onPanelClosed: () {
              //   _controller.forward();
              // },
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
      // body: const LeavesPageBody(),
      //Trial
    );
  }
}
