import 'package:employee_app/common_widgets/food_history_info_widget.dart';
import 'package:employee_app/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/food/purchased_item.dart';
import 'food_history_viewmodel.dart';

class FoodHistorySheet extends StatelessWidget {
  const FoodHistorySheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => FoodHistoryViewModel(),
      builder: (context, child) => Container(
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
            const SizedBox(
              height: 20,
            ),
            Text(
              'History',
              style: AppFonts.foodNameHeader.copyWith(fontSize: 24),
            ),
            Expanded(
              child: ValueListenableBuilder(
                  valueListenable: FoodHistoryViewModel.of(context).historydata,
                  builder: (context, data, child) {
                    Map<String, List<PurchasedItem>> map =
                        FoodHistoryViewModel().historydata.value;
                    print('MAP');
                    print(map);
                    return ListView.builder(
                        physics: const ClampingScrollPhysics(),
                        padding: const EdgeInsets.only(top: 10),
                        shrinkWrap: true,
                        itemCount: map.length,
                        itemBuilder: (context, _index) {
                          return Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'DATE COMES HERE SOON!!',
                                    style: AppFonts.foodNameHeader
                                        .copyWith(fontSize: 12),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadii.radius5px,
                                        color: ContainerColors.surfblue),
                                    child: Center(
                                        child: Text(
                                      '200',
                                      style: AppFonts.foodNameHeader.copyWith(
                                          fontSize: 12,
                                          color: TextColors.primaryColor),
                                    )),
                                  )
                                ],
                              ),
                              ListView.separated(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: 1,
                                  separatorBuilder: (context, index) {
                                    return const SizedBox(
                                      height: 15,
                                    );
                                  },
                                  itemBuilder: (context, index) {
                                    return const FoodHistoryInfoWidget();
                                  })
                            ],
                          );
                        });
                  }),
            )
          ],
        ),
      ),
    );
  }
}
