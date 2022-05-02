import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:employee_app/models/food/item.dart';

class PurchasableOrder {
  int orderId;
  String orderPlacedAt;
  List<Item> items;
  int total;
  PurchasableOrder({
    required this.orderId,
    required this.orderPlacedAt,
    required this.items,
    required this.total,
  });

  PurchasableOrder copyWith({
    int? orderId,
    String? orderPlacedAt,
    List<Item>? items,
    int? total,
  }) {
    return PurchasableOrder(
      orderId: orderId ?? this.orderId,
      orderPlacedAt: orderPlacedAt ?? this.orderPlacedAt,
      items: items ?? this.items,
      total: total ?? this.total,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'orderId': orderId});
    result.addAll({'orderPlacedAt': orderPlacedAt});
    result.addAll({'items': items.map((x) => x.toMap()).toList()});
    result.addAll({'total': total});
  
    return result;
  }

  factory PurchasableOrder.fromMap(Map<String, dynamic> map) {
    return PurchasableOrder(
      orderId: map['orderId']?.toInt() ?? 0,
      orderPlacedAt: map['orderPlacedAt'] ?? '',
      items: List<Item>.from(map['items']?.map((x) => Item.fromMap(x))),
      total: map['total']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory PurchasableOrder.fromJson(String source) => PurchasableOrder.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PurchasableOrder(orderId: $orderId, orderPlacedAt: $orderPlacedAt, items: $items, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is PurchasableOrder &&
      other.orderId == orderId &&
      other.orderPlacedAt == orderPlacedAt &&
      listEquals(other.items, items) &&
      other.total == total;
  }

  @override
  int get hashCode {
    return orderId.hashCode ^
      orderPlacedAt.hashCode ^
      items.hashCode ^
      total.hashCode;
  }
}
