import 'dart:convert';

import 'package:employee_app/pages/leaves_page/leaves_page_components/leaves_page_components.dart';
import 'package:provider/provider.dart';

import '../../../models/food/purchased_item.dart';
import '../../../services/user_service.dart';

class FoodHistoryViewModel extends ChangeNotifier {
  static FoodHistoryViewModel of(BuildContext context) =>
      context.read<FoodHistoryViewModel>();

  ValueNotifier<Map<String, List<PurchasedItem>>> historydata =
      ValueNotifier({"": []});

  getOrderHistory() async {
    String history = await UserService().orderhistory();
    Map<String, List<PurchasedItem>> map = {};

    var jsonresponse = jsonDecode(history);

    jsonresponse['data'].keys.forEach((e) => {
          map['$e'] = List<PurchasedItem>.from(jsonresponse['data']["$e"]
                  ["items"]
              .map((e) => PurchasedItem.fromMap(e)))
        });
    historydata.value = map;

    // print(historydata.value);
  }
}
