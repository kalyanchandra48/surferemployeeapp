import 'dart:convert';

class Item {
  String id;
  String name;
  int orderQty;
  int availableQty;
  String amount;
  String category;
  String imageUrl;
  Item({
    required this.id,
    required this.name,
    required this.orderQty,
    required this.availableQty,
    required this.amount,
    required this.category,
    required this.imageUrl,
  });

  Item copyWith({
    String? id,
    String? name,
    int? orderQty,
    int? availableQty,
    String? amount,
    String? category,
    String? imageUrl,
  }) {
    return Item(
      id: id ?? this.id,
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
      'id': id,
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
      id: map['id'] ?? '',
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
    return 'Item(id: $id, name: $name, orderQty: $orderQty, availableQty: $availableQty, amount: $amount, category: $category, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.id == id &&
        other.name == name &&
        other.orderQty == orderQty &&
        other.availableQty == availableQty &&
        other.amount == amount &&
        other.category == category &&
        other.imageUrl == imageUrl;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        orderQty.hashCode ^
        availableQty.hashCode ^
        amount.hashCode ^
        category.hashCode ^
        imageUrl.hashCode;
  }
}
