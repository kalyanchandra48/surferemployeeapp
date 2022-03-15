import 'package:flutter/material.dart';
import 'package:employee_app/styles/styles.dart';
import 'package:employee_app/models/food/item.dart';
import 'default_add_button.dart';
import 'add_quantity_button.dart';

class BeveragesTabBody extends StatelessWidget {
  List<Item> items = [
    Item(
        id: '',
        name: 'Chocalate shake',
        orderQty: 0,
        availableQty: 1,
        amount: '\$20',
        category: '',
        imageUrl:
            'http://www.theterracekitchen.in/wp-content/uploads/2019/07/069.-Chocolate-Thick-Shake_545x545.png'),
    Item(
        id: '',
        name: 'Rose Milk With Icecream',
        availableQty: 1,
        amount: '\$35',
        orderQty: 0,
        category: '',
        imageUrl:
            'https://rakskitchen.net/wp-content/uploads/2015/04/16863727508_978bfb9d75_z.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.all(24),
        physics: ClampingScrollPhysics(),
        itemCount: items.length,
        shrinkWrap: true,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 15,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(16),
            //  height: 84,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff000000).withOpacity(0.08),
                  blurRadius: 84,
                  spreadRadius: 0,
                ),
              ],
              color: Colors.white,
            ),
            child: Row(
              children: [
                Container(
                  height: 54,
                  width: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(items[index].imageUrl),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 14, top: 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 180,
                        child: Text(items[index].name,
                            style: AppFonts.foodNameHeader),
                      ),
                      SizedBox(height: 2),
                      Text(items[index].amount, style: AppFonts.hintText14),
                    ],
                  ),
                ),
                Spacer(),
                AnimatedCrossFade(
                  duration: const Duration(seconds: 1),
                  firstChild: DefaultAddButton(
                    item: items[index],
                  ),
                  secondChild: AddQuantityButton(),
                  crossFadeState: items[index].orderQty == 0
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                ),
              ],
            ),
          );
        });
  }
}
