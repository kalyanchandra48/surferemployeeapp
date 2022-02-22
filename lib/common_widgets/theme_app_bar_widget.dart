import 'package:employee_app/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'background_grid_lines.dart';

class ThemeAppBar extends StatelessWidget {
  final Widget bottomSheetBody;
  final bool crossFade;
  final String header;
  final String subHeader;
  final String imageUrl;
  final Color innerShade;
  final Color outerShade;
  const ThemeAppBar(
      {Key? key,
      required this.crossFade,
      required this.bottomSheetBody,
      required this.header,
      required this.subHeader,
      required this.innerShade,
      required this.outerShade,
      required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: BackgroundGridLines(heightGap: 5, widthGap: 15),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.05,
            left: 16,
            right: 16),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Row(
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
                  duration: const Duration(milliseconds: 400),
                  sizeCurve: Curves.ease,
                  firstCurve: Curves.easeOutBack,
                  crossFadeState: crossFade == true
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  firstChild: Container(
                    padding: const EdgeInsets.all(4),
                    height: 68,
                    width: 68,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: outerShade,
                        ),
                        BoxShadow(
                          color: innerShade,
                          spreadRadius: -13,
                          blurRadius: 10.0,
                        ),
                      ],
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      imageUrl,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  secondChild: const SizedBox(
                    width: 0,
                  ),
                ),
              ],
            ),
            Positioned(
              right: 20,
              child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadii.radius24px),
                      isScrollControlled: true,
                      context: context,
                      builder: (BuildContext context) {
                        return bottomSheetBody;
                      },
                    );
                  },
                  child: SvgPicture.asset(
                    'assets/add_button.svg',
                    color: Colors.white,
                  )),
            ),
            AnimatedAlign(
              alignment: crossFade == true
                  ? Alignment.bottomLeft
                  : Alignment.topCenter,
              duration: const Duration(milliseconds: 400),
              curve: Curves.linear,
              child: Padding(
                padding: crossFade == true
                    ? const EdgeInsets.only(left: 110.0)
                    : const EdgeInsets.only(left: 0),
                child: Column(
                  crossAxisAlignment: crossFade == true
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      header,
                      style:
                          AppFonts.appHeaderBlack.copyWith(color: Colors.white),
                    ),
                    Text(
                      subHeader,
                      style: AppFonts.labelSubTextBG,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
