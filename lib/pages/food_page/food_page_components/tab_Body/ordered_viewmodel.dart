import 'package:employee_app/models/food/item.dart';
import 'package:employee_app/pages/food_page/food_page_components/tab_Body/food_item_list.dart';
import 'package:employee_app/pages/leaves_page/leaves_page_components/leaves_page_components.dart';
import 'package:provider/provider.dart';

class OrderedViewModel extends ChangeNotifier {

  Map<String, Item> orderedItems = filtered;
  
  static OrderedViewModel of(BuildContext context) =>
      context.read<OrderedViewModel>();

  List<Item> get cart => orderedItems.values.toList();

  List<Item> get itemsnames {
    List<Item> sorted = orderedItems.values
        .where((element) => element.name.startsWith(RegExp(r'[A-Z][a-z]')))
        .toList();
    List<Item> sortedQuantity =
        sorted.where((element) => element.orderQty > 0).toList();
    return sortedQuantity;
  }
}
