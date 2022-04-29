import 'package:employee_app/common_widgets/food_info_widget.dart';
import 'package:employee_app/common_widgets/navigation_button.dart';
import 'package:employee_app/pages/food_page/food_page_components/order_summary_widget.dart';
import 'package:employee_app/pages/food_page/food_page_components/ordered_count_widget.dart';
import 'package:employee_app/pages/food_page/food_page_components/tab_Body/ordered_viewmodel.dart';
import 'package:employee_app/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/food/item.dart';

class CheckoutSheet extends StatelessWidget {
  const CheckoutSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => OrderedViewModel(),
      builder: (context, _) => const CheckOutBottomSheet(),
    );
  }
}

class CheckOutBottomSheet extends StatelessWidget {
  const CheckOutBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Item> allItems = OrderedViewModel.of(context).itemsnames;
    // print(allItems.length);
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
                    separatorBuilder: (context, index) => const SizedBox(
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
                OrderSummaryWidget(allItems: allItems),
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
        child: NavigationButton(
            buttonColor: ButtonColors.nextButton,
            text: 'Confirm Order',
            buttonTextStyle: AppFonts.buttonTextBB),
      ),
    ]);
  }
}
