import 'dart:convert';
import 'package:isar/isar.dart';
part 'item.g.dart';

@Collection()
class Item {
  @Id()
  int? id;
  @Name('itemId')
  String itemId;
  @Name('name')
  String name;
  @Name('orderQty')
  int orderQty;
  @Name('availableQty')
  int availableQty;
  @Name('amount')
  String amount;
  @Name('category')
  String category;
  @Name('imageUrl')
  String imageUrl;
  Item({
    required this.itemId,
    required this.name,
    required this.orderQty,
    required this.availableQty,
    required this.amount,
    required this.category,
    required this.imageUrl,
  });

  Item copyWith({
    String? itemId,
    String? name,
    int? orderQty,
    int? availableQty,
    String? amount,
    String? category,
    String? imageUrl,
  }) {
    return Item(
      itemId: itemId ?? this.itemId,
      name: name ?? this.name,
      orderQty: orderQty ?? this.orderQty,
      availableQty: availableQty ?? this.availableQty,
      amount: amount ?? this.amount,
      category: category ?? this.category,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'itemId': itemId,
      'name': name,
      'orderQty': orderQty,
      'availableQty': availableQty,
      'amount': amount,
      'category': category,
      'imageUrl': imageUrl,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      itemId: map['itemId'] ?? '',
      name: map['name'] ?? '',
      orderQty: map['orderQty']?.toInt() ?? 0,
      availableQty: map['availableQty']?.toInt() ?? 0,
      amount: map['amount'] ?? '',
      category: map['category'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(itemId: $itemId, name: $name, orderQty: $orderQty, availableQty: $availableQty, amount: $amount, category: $category, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.itemId == itemId &&
        other.name == name &&
        other.orderQty == orderQty &&
        other.availableQty == availableQty &&
        other.amount == amount &&
        other.category == category &&
        other.imageUrl == imageUrl;
  }

  @override
  int get hashCode {
    return itemId.hashCode ^
        name.hashCode ^
        orderQty.hashCode ^
        availableQty.hashCode ^
        amount.hashCode ^
        category.hashCode ^
        imageUrl.hashCode;
  }
}
