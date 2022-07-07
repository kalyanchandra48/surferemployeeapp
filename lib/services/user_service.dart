import 'dart:convert';

import 'package:employee_app/services/http.dart';
import 'package:isar/isar.dart';

import '../models/food/item.dart';
import '../models/user/user.dart';
import '../provider/app_view_model.dart';
import 'locator.dart';

class UserService {
  final Isar _isar = locator<AppViewModel>().isar;

  static Future<dynamic> setUserCustomClaims() async {
    dynamic callable = await FireFunctionsHttpsCaller.post(
      Uri.parse(
          'https://us-central1-employee-app-57d9a.cloudfunctions.net/functions/users/givePrivileges'),
      {},
    );
  }

  addProfile(String firstname, String lastname, String location) async {
    User? isarUser = await _isar.users.get(1);

    _isar.writeTxn((isar) => isar.users.put(User(
        id: 1,
        userId: isarUser!.userId,
        firstname: firstname,
        lastname: lastname,
        location: location,
        imageUrl: '',
        insuranceNum: '',
        email: isarUser.email,
        pfNum: '',
        dob: '')));

    final User? myUser = await _isar.users.get(1);
    print('User from Isar---->$myUser');
  }

  addInitialDetailsToIsar(String uid, String email) async {
    await _isar
        .writeTxn(
          (isar) => isar.users.put(User(
              id: 1,
              userId: uid,
              firstname: '',
              lastname: '',
              location: '',
              imageUrl: '',
              insuranceNum: '',
              email: email,
              pfNum: '',
              dob: '')),
        )
        .then((value) => print(value));
  }

  updateUsertoDb(
    User user,
  ) async {
    dynamic res = await FireFunctionsHttpsCaller.post(
      Uri.parse(
          'https://us-central1-employee-app-57d9a.cloudfunctions.net/functions/users/${user.userId}'),
      {
        "firstName": user.firstname,
        "lastName": user.lastname,
        "location": user.location,
        "email": user.email,
      },
    );
  }

  orderhistory() async {
    dynamic history = await FireFunctionsHttpsCaller.post(
        Uri.parse(
            'https://us-central1-employee-app-57d9a.cloudfunctions.net/functions/purchasable/userPurchases'),
        {
          "from": 0,
          "to": 1657091814599,
        });
    print('data');
    return history;
    //isar.writeTxn((isar) => isar.purchasableOrderOnes.put());
  }

  createorder(List<Item> items) async {
    dynamic postOrder = FireFunctionsHttpsCaller.post(
        Uri.parse(
            'https://us-central1-employee-app-57d9a.cloudfunctions.net/functions/purchasable/purchaseItems'),
        {
          "items": items.map<Map<dynamic, dynamic>>((e) {
            return EItem(
                    pricePerUnit: int.parse(e.amount),
                    type: e.category,
                    id: e.itemId,
                    quantity: e.orderQty)
                .toMap();
          }).toList(),
          "total": 0,
        });
  }
}

class EItem {
  String id;
  String type;
  int pricePerUnit;
  int quantity;
  EItem({
    required this.id,
    required this.type,
    required this.pricePerUnit,
    required this.quantity,
  });

  EItem copyWith({
    String? id,
    String? type,
    int? pricePerUnit,
    int? quantity,
  }) {
    return EItem(
      id: id ?? this.id,
      type: type ?? this.type,
      pricePerUnit: pricePerUnit ?? this.pricePerUnit,
      quantity: quantity ?? this.quantity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'type': type,
      'pricePerUnit': pricePerUnit,
      'quantity': quantity,
    };
  }

  factory EItem.fromMap(Map<String, dynamic> map) {
    return EItem(
      id: map['id'] ?? '',
      type: map['type'] ?? '',
      pricePerUnit: map['pricePerUnit']?.toInt() ?? 0,
      quantity: map['quantity']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory EItem.fromJson(String source) => EItem.fromMap(json.decode(source));

  @override
  String toString() {
    return 'EItem(id: $id, type: $type, pricePerUnit: $pricePerUnit, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is EItem &&
        other.id == id &&
        other.type == type &&
        other.pricePerUnit == pricePerUnit &&
        other.quantity == quantity;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        type.hashCode ^
        pricePerUnit.hashCode ^
        quantity.hashCode;
  }
}
