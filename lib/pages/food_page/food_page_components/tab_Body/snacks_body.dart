import 'package:flutter/material.dart';
import 'package:employee_app/styles/styles.dart';
import 'package:employee_app/models/food/item.dart';

class SnacksTabBody extends StatefulWidget {
  @override
  _SnacksTabBodyState createState() => _SnacksTabBodyState();
}

class _SnacksTabBodyState extends State<SnacksTabBody> {
  List<Item> items = [
    Item(
        id: '',
        name: 'Coke',
        orderQty: 0,
        availableQty: 1,
        amount: '\$30',
        category: '',
        imageUrl:
            'https://imageio.forbes.com/specials-images/imageserve/1189255149/An-American-multinational-corporation-and-manufacturer-of---/960x0.jpg?fit=bounds&format=jpg&width=960'),
    Item(
        id: '',
        name: 'Special Chicken Dum Hyderbadi Biriyani with raita',
        availableQty: 1,
        amount: '\$115',
        orderQty: 0,
        category: '',
        imageUrl:
            'https://www.licious.in/blog/wp-content/uploads/2020/12/Hyderabadi-chicken-Biryani.jpg')
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(padding: EdgeInsets.all(24), children: [
      ListView.separated(
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
          }),
    ]);
  }
}

class DefaultAddButton extends StatefulWidget {
  Item item;
  DefaultAddButton({required this.item});
  @override
  _DefaultAddButtonState createState() => _DefaultAddButtonState();
}

class _DefaultAddButtonState extends State<DefaultAddButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // print(items[index].name);
        setState(() {
          widget.item.orderQty = widget.item.orderQty + 1;
          print(widget.item.orderQty);
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
        //  height: 24,
        // width: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: ContainerColors.bluelight,
        ),
        child: Text('+ Add',
            style: AppFonts.smallText12.copyWith(
                color: TextColors.surfblue, fontWeight: FontWeight.bold)),
      ),
    );
  }
}

class AddQuantityButton extends StatefulWidget {
  @override
  _AddQuantityButtonState createState() => _AddQuantityButtonState();
}

class _AddQuantityButtonState extends State<AddQuantityButton> {
  @override
  int availableQty = 1;
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: ContainerColors.bluelight,
      ),
      child: Row(children: [
        GestureDetector(
          onTap: () {
            setState(() {
              if (availableQty > 1) {
                availableQty = availableQty - 1;
                print(availableQty);
              }
            });
          },
          child: Container(
              color: Colors.transparent,
              width: 30,
              height: 30,
              child: Center(
                child: Text(
                  '-',
                  style: AppFonts.smallTextBB.copyWith(
                    color: TextColors.surfblue,
                  ),
                ),
              )),
        ),
        Text(availableQty.toString(),
            style: AppFonts.smallTextBB.copyWith(
              color: TextColors.surfblue,
            )),
        GestureDetector(
          onTap: () {
            setState(() {
              if (availableQty >= 1 && availableQty < 15) {
                availableQty = availableQty + 1;
                print(availableQty);
              }
            });
          },
          child: Container(
            width: 30,
            color: Colors.transparent,
            height: 30,
            child: Center(
              child: Text(
                '+',
                style: AppFonts.smallTextBB.copyWith(
                  color: TextColors.surfblue,
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
