import 'package:employee_app/common_widgets/tab_delegate.dart';
import 'package:flutter/material.dart';
import 'package:employee_app/pages/food_page/food_page_components/tab_Body/tab_body_components.dart';

class FoodPagePanelBody extends StatefulWidget {
  const FoodPagePanelBody({Key? key}) : super(key: key);

  @override
  _FoodPagePanelBodyState createState() => _FoodPagePanelBodyState();
}

class _FoodPagePanelBodyState extends State<FoodPagePanelBody>
    with TickerProviderStateMixin {
  TabController? _foodCategoryTabController;
  List<String> tabText = ['Snacks', 'Beverages'];
  List<Widget> tabBody = <Widget>[SnacksTabBody(), BeveragesTabBody()];
  @override
  void initState() {
    _foodCategoryTabController =
        TabController(length: tabText.length, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TabBarDelegate(controller: _foodCategoryTabController, text: tabText),
        Expanded(
          child: TabBarView(
            controller: _foodCategoryTabController,
            children: tabBody.map((e) => e).toList(),
          ),
        ),
      ],
    );
  }
}
