import 'package:flutter/material.dart';
import 'order_summary_widget.dart';
import 'package:employee_app/common_widgets/common_widgets_component.dart';

class CheckoutSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return /*Consumer<MyCart>(
      builder: (context, value, child) =>*/
        Stack(alignment: Alignment.bottomCenter, children: [
      Container(
        padding: const EdgeInsets.all(24),
        height: MediaQuery.of(context).size.height / 1.05,
        decoration: const BoxDecoration(
          borderRadius: BorderRadii.radius24px,
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 4,
                width: 119,
                decoration: BoxDecoration(
                  borderRadius: BorderRadii.radius4px,
                  color: ContainerColors.greyContainer,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Your Order',
              style: AppFonts.largeTextBB,
            ),
            // Container(
            //   height: 340,
            //   color: Colors.white,
            // ),
            /*  OrderFoodWidget(
			      foodItem:2,
              //  foodItem: value.selectedItem,
              ),
	      */
            Text('Order Information', style: AppFonts.mediumTextBB),
            const SizedBox(height: 20),
            OrderSummaryWidget(),
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
    // );
  }
}
