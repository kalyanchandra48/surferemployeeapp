import 'dart:async';

import 'package:employee_app/pages/leaves_page/leaves_page_components/leaves_page_components.dart';

import '../../../models/food/item.dart';
import 'package:provider/provider.dart';

class OrderViewModel extends ChangeNotifier {
  static OrderViewModel of(BuildContext context) =>
      context.read<OrderViewModel>();

  final StreamController<List<Item>> orderStreamController =
      StreamController<List<Item>>.broadcast();

  Stream<List<Item>> get orderItemsStream => orderStreamController.stream;
  OrderViewModel() {
    listner();
  }
  listner() {
    orderStreamController.stream.listen((onData) {
      print(onData);
    });
  }

  addItemToStream(List<Item> item) async {
    orderStreamController.add(item);
    print("adding list to stream");

    notifyListeners();
  }
}
