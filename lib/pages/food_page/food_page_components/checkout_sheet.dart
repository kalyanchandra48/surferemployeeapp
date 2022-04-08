import 'package:flutter/material.dart';
import 'order_summary_widget.dart';
import 'package:employee_app/common_widgets/common_widgets_component.dart';
import 'order_food_widget.dart';

class CheckoutSheet extends StatelessWidget {
  const CheckoutSheet({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.only(top: 24, bottom: 60),
              //  physics: ClampingScrollPhysics(),
              children: [
                /* Center(
                  child: Container(
                    height: 4,
                    width: 119,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadii.radius4px,
                      color: ContainerColors.greyContainer,
                    ),
                  ),
                ),
                SizedBox(height: 30),*/
                Text(
                  'Your Order',
                  style: AppFonts.largeTextBB,
                ),
                const OrderFoodWidget(
                  foodItem: [],
                ),
                Text('Order Information', style: AppFonts.mediumTextBB),
                const SizedBox(height: 20),
                OrderSummaryWidget(),
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
        bottom: 20,
        child: NavigationButton(
            buttonColor: ButtonColors.nextButton,
            text: 'Confirm Order',
            buttonTextStyle: AppFonts.buttonTextBB),
      ),
    ]);
  }
}
