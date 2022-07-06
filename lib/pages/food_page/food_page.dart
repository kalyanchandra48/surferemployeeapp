import 'package:employee_app/models/food/item.dart';
import 'package:employee_app/pages/food_page/view_model/food_page_vmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './food_page_components/food_page_components.dart';
//import 'package:employee_app/pages/food_page/food_page_components/tab_Body/food_item_list.dart';

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
    return ChangeNotifierProvider(
        create: (_) => FoodPageViewModel(),
        builder: (context, _) {
          List<Item> allItems = FoodPageViewModel.of(context).itemsnames;

          return Scaffold(
            backgroundColor: AppColors.appthemeColor,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(90),
              child: ThemeAppBar(
                herotag: 'FoodUpdates',
                bottomSheetBody: const FoodHistorySheet(),
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
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
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
                      ),
                      ValueListenableBuilder<bool>(
                          valueListenable: FoodPageViewModel.of(context)
                              .enablePlaceOrderButton,
                          builder: (context, widgetbool, _) {
                            return Visibility(
                              visible: widgetbool,
                              child: Positioned(
                                bottom: 20,
                                child: GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet(
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(24),
                                              topRight: Radius.circular(24))),
                                      isScrollControlled: true,
                                      context: context,
                                      builder: (BuildContext context) {
                                        return const CheckoutSheet();
                                      },
                                    );
                                  },
                                  child: NavigationButton(
                                      buttonColor: ButtonColors.nextButton,
                                      text: 'Place Order',
                                      buttonTextStyle: AppFonts.buttonTextBB),
                                ),
                              ),
                            );
                          }),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
