import 'dart:convert';

import 'package:employee_app/models/food/purchased_item.dart';
import 'package:flutter/foundation.dart';

class Purchase {
  String purchaseId;
  int datetime;
  int total;
  List<PurchasedItem> items;
  Purchase({
    required this.purchaseId,
    required this.datetime,
    required this.total,
    required this.items,
  });

  Purchase copyWith({
    String? purchaseId,
    int? datetime,
    int? total,
    List<PurchasedItem>? items,
  }) {
    return Purchase(
      purchaseId: purchaseId ?? this.purchaseId,
      datetime: datetime ?? this.datetime,
      total: total ?? this.total,
      items: items ?? this.items,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'purchaseId': purchaseId});
    result.addAll({'datetime': datetime});
    result.addAll({'total': total});
    result.addAll({'items': items.map((x) => x.toMap()).toList()});

    return result;
  }

  factory Purchase.fromMap(Map<String, dynamic> map) {
    return Purchase(
      purchaseId: map['purchaseId'] ?? '',
      datetime: map['datetime']?.toInt() ?? 0,
      total: map['total']?.toInt() ?? 0,
      items: List<PurchasedItem>.from(
          map['items']?.map((x) => PurchasedItem.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Purchase.fromJson(String source) =>
      Purchase.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Purchase(purchaseId: $purchaseId, datetime: $datetime, total: $total, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Purchase &&
        other.purchaseId == purchaseId &&
        other.datetime == datetime &&
        other.total == total &&
        listEquals(other.items, items);
  }

  @override
  int get hashCode {
    return purchaseId.hashCode ^
        datetime.hashCode ^
        total.hashCode ^
        items.hashCode;
  }
}
