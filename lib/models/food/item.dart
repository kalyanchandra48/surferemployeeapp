import 'dart:convert';

class Item {
  String id;
  String name;
  String quantity;
  String amount;
  String category;
  String imageUrl;
  Item({
    required this.id,
    required this.name,
    required this.quantity,
    required this.amount,
    required this.category,
    required this.imageUrl,
  });

  Item copyWith({
    String? id,
    String? name,
    String? quantity,
    String? amount,
    String? category,
    String? imageUrl,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
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
    return 'Item(id: $id, name: $name, quantity: $quantity, amount: $amount, category: $category, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.id == id &&
        other.name == name &&
        other.quantity == quantity &&
        other.amount == amount &&
        other.category == category &&
        other.imageUrl == imageUrl;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        quantity.hashCode ^
        amount.hashCode ^
        category.hashCode ^
        imageUrl.hashCode;
  }
}
