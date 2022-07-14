import 'dart:convert';

import 'package:isar/isar.dart';

part 'purchase.g.dart';

@Collection()
class Purchase {
  @Id()
  int id;
  @Name('PurchaseId')
  String purchaseId;
  @Name('datetime')
  int datetime;
  @Name('total')
  int total;
  @Name('items')
  String item;
  Purchase({
    required this.id,
    required this.purchaseId,
    required this.datetime,
    required this.total,
    required this.item,
  });

  Purchase copyWith({
    int? id,
    String? purchaseId,
    int? datetime,
    int? total,
    String? item,
  }) {
    return Purchase(
      id: id ?? this.id,
      purchaseId: purchaseId ?? this.purchaseId,
      datetime: datetime ?? this.datetime,
      total: total ?? this.total,
      item: item ?? this.item,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'purchaseId': purchaseId});
    result.addAll({'datetime': datetime});
    result.addAll({'total': total});
    result.addAll({'item': item});

    return result;
  }

  factory Purchase.fromMap(Map<String, dynamic> map) {
    return Purchase(
      id: map['id']?.toInt() ?? 0,
      purchaseId: map['purchaseId'] ?? '',
      datetime: map['datetime']?.toInt() ?? 0,
      total: map['total']?.toInt() ?? 0,
      item: map['item'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Purchase.fromJson(String source) =>
      Purchase.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Purchase(id: $id, purchaseId: $purchaseId, datetime: $datetime, total: $total, item: $item)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Purchase &&
        other.id == id &&
        other.purchaseId == purchaseId &&
        other.datetime == datetime &&
        other.total == total &&
        other.item == item;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        purchaseId.hashCode ^
        datetime.hashCode ^
        total.hashCode ^
        item.hashCode;
  }
}
