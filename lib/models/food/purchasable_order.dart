import 'dart:convert';

import 'package:isar/isar.dart';

part 'purchasable_order.g.dart';

@Collection()
class PurchasableOrderOne {
  @Id()
  int id;

  @Name('orderPlacedAt')
  DateTime orderPlacedAt;
  @Name('items')
  late String items;
  @Name('total')
  int total;
  PurchasableOrderOne({
    required this.id,
    required this.orderPlacedAt,
    required this.items,
    required this.total,
  });

  PurchasableOrderOne copyWith({
    int? id,
    DateTime? orderPlacedAt,
    String? items,
    int? total,
  }) {
    return PurchasableOrderOne(
      id: id ?? this.id,
      orderPlacedAt: orderPlacedAt ?? this.orderPlacedAt,
      items: items ?? this.items,
      total: total ?? this.total,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'orderPlacedAt': orderPlacedAt.millisecondsSinceEpoch});
    result.addAll({'items': json.decode(items)});
    result.addAll({'total': total});

    return result;
  }

  factory PurchasableOrderOne.fromMap(Map<String, dynamic> map) {
    return PurchasableOrderOne(
      id: map['id']?.toInt() ?? 0,
      orderPlacedAt: DateTime.fromMillisecondsSinceEpoch(map['orderPlacedAt']),
      items: map['items'] ?? '',
      total: map['total']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory PurchasableOrderOne.fromJson(String source) =>
      PurchasableOrderOne.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PurchasableOrderOne(id: $id, orderPlacedAt: $orderPlacedAt, items: $items, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PurchasableOrderOne &&
        other.id == id &&
        other.orderPlacedAt == orderPlacedAt &&
        other.items == items &&
        other.total == total;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        orderPlacedAt.hashCode ^
        items.hashCode ^
        total.hashCode;
  }
}
