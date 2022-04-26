import 'package:employee_app/models/food/item.dart';
import 'package:employee_app/pages/food_page/food_page_components/order_food_widget.dart';
import 'package:employee_app/pages/food_page/food_page_components/order_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'order_summary_widget.dart';
import 'package:employee_app/common_widgets/common_widgets_component.dart';

class CheckoutSheet extends StatelessWidget {
  const CheckoutSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => OrderViewModel(),
      builder: (context, _) => const SomeStack(),
    );
  }
}

class SomeStack extends StatelessWidget {
  const SomeStack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Stream<List<Item>> itemStream = OrderViewModel.of(context).orderItemsStream;

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
                Text(
                  'Your Order',
                  style: AppFonts.largeTextBB,
                ),
                StreamBuilder<List<Item>>(
                    stream: itemStream,
                    builder: (BuildContext context,
                        AsyncSnapshot<List<Item>> snapshot) {
                      print('direct from stream');
                      itemStream.last.then((value) {
                        print(value);
                        print("From Item Stream");
                      });
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Container(
                          child: const Center(
                            child: CupertinoActivityIndicator(
                              color: Colors.black,
                              radius: 26,
                            ),
                          ),
                        );
                      }

                      print('snapshot from builder -> $snapshot');
                      if (snapshot.hasData) {
                        print('Snapshot from stream->');
                        print(snapshot.data);
                        return OrderFoodWidget(
                          foodItem: snapshot.data!,
                        );
                      }
                      return const SizedBox(
                          height: 200,
                          child: Text('No items to display!!!!!!!!!!!'));
                    }),
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
