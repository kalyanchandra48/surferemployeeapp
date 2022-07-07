import 'dart:convert';

class PurchasedItem {
  String id;
  int pricePerUnit;
  int quantity;
  String type;
  PurchasedItem({
    required this.id,
    required this.pricePerUnit,
    required this.quantity,
    required this.type,
  });

  PurchasedItem copyWith({
    String? id,
    int? pricePerUnit,
    int? quantity,
    String? type,
  }) {
    return PurchasedItem(
      id: id ?? this.id,
      pricePerUnit: pricePerUnit ?? this.pricePerUnit,
      quantity: quantity ?? this.quantity,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'pricePerUnit': pricePerUnit});
    result.addAll({'quantity': quantity});
    result.addAll({'type': type});

    return result;
  }

  factory PurchasedItem.fromMap(Map<String, dynamic> map) {
    return PurchasedItem(
      id: map['id'] ?? '',
      pricePerUnit: map['pricePerUnit']?.toInt() ?? 0,
      quantity: map['quantity']?.toInt() ?? 0,
      type: map['type'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PurchasedItem.fromJson(String source) =>
      PurchasedItem.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PurchasedItem(id: $id, pricePerUnit: $pricePerUnit, quantity: $quantity, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PurchasedItem &&
        other.id == id &&
        other.pricePerUnit == pricePerUnit &&
        other.quantity == quantity &&
        other.type == type;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        pricePerUnit.hashCode ^
        quantity.hashCode ^
        type.hashCode;
  }
}
