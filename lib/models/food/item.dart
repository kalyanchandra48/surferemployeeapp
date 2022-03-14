import 'dart:convert';

class Item {
  String id;
  String name;
  int count;
  String quantity;
  String amount;
  String category;
  String imageUrl;
  Item({
    required this.id,
    required this.name,
    required this.count,
    required this.quantity,
    required this.amount,
    required this.category,
    required this.imageUrl,
  });

  Item copyWith({
    String? id,
    String? name,
    int? count,
    String? quantity,
    String? amount,
    String? category,
    String? imageUrl,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      count: count ?? this.count,
      quantity: quantity ?? this.quantity,
      amount: amount ?? this.amount,
      category: category ?? this.category,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'count': count,
      'quantity': quantity,
      'amount': amount,
      'category': category,
      'imageUrl': imageUrl,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      count: map['count']?.toInt() ?? 0,
      quantity: map['quantity'] ?? '',
      amount: map['amount'] ?? '',
      category: map['category'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, name: $name, count: $count, quantity: $quantity, amount: $amount, category: $category, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.id == id &&
        other.name == name &&
        other.count == count &&
        other.quantity == quantity &&
        other.amount == amount &&
        other.category == category &&
        other.imageUrl == imageUrl;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        count.hashCode ^
        quantity.hashCode ^
        amount.hashCode ^
        category.hashCode ^
        imageUrl.hashCode;
  }
}
