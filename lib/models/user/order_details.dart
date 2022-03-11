class OrderDetails {
  String orderID;
  String itemID;
  String itemName;
  String price;
  int quantity;
  String paymentMethod;
  PaymentStatus status;

  OrderDetails(
      {required this.itemID,
      required this.itemName,
      required this.orderID,
      required this.paymentMethod,
      required this.price,
      required this.quantity,
      required this.status});
}

enum PaymentStatus { success, failure }
