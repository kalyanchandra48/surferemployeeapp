import 'package:employee_app/common_widgets/tab_delegate.dart';
import 'package:employee_app/pages/food_page/food_page_components/food_data.dart';
import 'package:flutter/material.dart';
import 'package:employee_app/pages/food_page/food_page_components/tab_Body/tab_body_components.dart';
import '../../../models/food/item.dart';

class FoodPagePanelBody extends StatefulWidget {
  const FoodPagePanelBody({Key? key}) : super(key: key);

  @override
  _FoodPagePanelBodyState createState() => _FoodPagePanelBodyState();
}

class _FoodPagePanelBodyState extends State<FoodPagePanelBody>
    with TickerProviderStateMixin {
  List<Item>? foodData = foodItem();
  TabController? _foodCategoryTabController;
  List<String> tabText = <String>[];
  List<Widget> tabBody = <Widget>[];
  @override
  void initState() {
    tabText = foodData!.map((e) => e.category).toSet().toList();
    for (var element in tabText) {
      tabBody.add(FoodItemList(
          foodItem: foodData!.where((e) => e.category == element).toList()));
    }

    _foodCategoryTabController =
        TabController(length: tabText.length, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (foodData == null || tabText == []) {
      return const Center(
        child: Text('No data to show'),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TabBarDelegate(controller: _foodCategoryTabController, text: tabText),
        Expanded(
          child: TabBarView(
            controller: _foodCategoryTabController,
            children: tabBody,
          ),
        ),
      ],
    );
  }
}
