import 'package:employee_app/common_widgets/food_info_widget.dart';
import 'package:employee_app/common_widgets/food_success_page.dart';
import 'package:employee_app/common_widgets/navigation_button.dart';
import 'package:employee_app/pages/food_page/food_page_components/order_summary_widget.dart';
import 'package:employee_app/pages/food_page/food_page_components/ordered_count_widget.dart';
import 'package:employee_app/pages/food_page/food_page_components/tab_Body/food_item_list.dart';
import 'package:employee_app/pages/food_page/view_model/food_page_vmodel.dart';
import 'package:employee_app/services/utils.dart';
import 'package:employee_app/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../models/food/item.dart';
import '../../../services/user_service.dart';

class CheckoutSheet extends StatelessWidget {
  const CheckoutSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => FoodPageViewModel(),
      builder: (context, _) => const CheckOutBottomSheet(),
    );
  }
}

class CheckOutBottomSheet extends StatelessWidget {
  const CheckOutBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Item> allItems = FoodPageViewModel.of(context).itemsnames;
    return ValueListenableBuilder<bool>(
        valueListenable: FoodPageViewModel.of(context).confirmOrder,
        builder: (context, confirmorder, child) {
          return AnimatedSwitcher(
              switchInCurve: Curves.easeIn,
              switchOutCurve: Curves.easeOut,
              duration: const Duration(seconds: 2),
              child: confirmorder == false
                  ? OrderItemsWidget(allItems: allItems)
                  : const FoodSuccessPage());
        });
  }
}

class OrderItemsWidget extends StatelessWidget {
  OrderItemsWidget({
    Key? key,
    required this.allItems,
  }) : super(key: key);

  final List<Item> allItems;
  String getOrderId() {
    String orderId = Utils.getRandomSecureString(12).toString();
    return orderId;
  }

  static final DateTime now = DateTime.now();
  static final DateFormat formatter = DateFormat('dd MMMM yyyy, H:mm');
  final String formatted = formatter.format(now);

  //final UserService _us = locator<UserService>();

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.bottomCenter, children: [
      Container(
        padding: const EdgeInsets.all(24),
        height: MediaQuery.of(context).size.height / 1.05,
        decoration: const BoxDecoration(
          borderRadius: BorderRadii.radius24px,
          color: Colors.white,
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            ListView(
              physics: const ClampingScrollPhysics(),
              padding: const EdgeInsets.only(top: 24, bottom: 60),
              children: [
                Text(
                  'Your Order',
                  style: AppFonts.largeTextBB,
                ),
                ListView.separated(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    physics: const ClampingScrollPhysics(),
                    itemCount: allItems.length,
                    shrinkWrap: true,
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(
                          height: 10,
                        ),
                    itemBuilder: (BuildContext context, int index) =>
                        FoodInfoWidget(
                            foodItem: allItems[index],
                            actionWidget: OrderedCountWidget(
                              orderedqty: allItems[index].orderQty,
                            ))),
                Text('Order Information', style: AppFonts.mediumTextBB),
                const SizedBox(height: 20),
                OrderSummaryWidget(
                    allItems: allItems,
                    orderId: getOrderId(),
                    placedAt: formatted),
              ],
            ),
            Positioned(
              top: 1,
              child: Center(
                child: Container(
                  height: 4,
                  width: 119,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadii.radius4px,
                    color: ContainerColors.greyContainer,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Positioned(
        bottom: 15,
        child: GestureDetector(
          onTap: () {
            UserService().createorder(allItems);
            filtered.clear();
            FoodPageViewModel.of(context).setConfirmOrder(true);
          },
          child: NavigationButton(
              buttonColor: ButtonColors.nextButton,
              text: 'Confirm Order',
              buttonTextStyle: AppFonts.buttonTextBB),
        ),
      ),
    ]);
  }
}
