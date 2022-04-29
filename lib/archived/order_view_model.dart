import 'dart:async';

import 'package:employee_app/pages/leaves_page/leaves_page_components/leaves_page_components.dart';

import '../models/food/item.dart';
import 'package:provider/provider.dart';

class OrderViewModel extends ChangeNotifier {
  OrderViewModel() {
    listner();
  }

  final StreamController<List<Item>> orderStreamController =
      StreamController<List<Item>>.broadcast();

  static OrderViewModel of(BuildContext context) =>
      context.read<OrderViewModel>();

    

  Stream<List<Item>> get orderItemsStream => orderStreamController.stream;

  listner() {
    orderStreamController.stream.listen((onData) {
      notifyListeners();
    });
  }

  addItemToStream(List<Item> item) async {
    orderStreamController.add(item);
    notifyListeners();
  }
}
