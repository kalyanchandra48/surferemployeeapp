import 'dart:convert';
import 'package:isar/isar.dart';
part 'leaves.g.dart';

@Collection()
class Leaves {
  int id = Isar.autoIncrement;
  String leaveId;
  String title;
  String description;
  String category;
  // it can be either Vacation India and can also be Holidays in India
  DateTime toDate;
  DateTime fromDate;

  Leaves({
    required this.leaveId,
    required this.title,
    required this.description,
    required this.category,
    required this.toDate,
    required this.fromDate,
  });

  Leaves copyWith({
    String? leaveId,
    String? title,
    String? description,
    String? category,
    DateTime? toDate,
    DateTime? fromDate,
  }) {
    return Leaves(
      leaveId: leaveId ?? this.leaveId,
      title: title ?? this.title,
      description: description ?? this.description,
      category: category ?? this.category,
      toDate: toDate ?? this.toDate,
      fromDate: fromDate ?? this.fromDate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'leaveId': leaveId,
      'title': title,
      'description': description,
      'category': category,
      'toDate': toDate.millisecondsSinceEpoch,
      'fromDate': fromDate.millisecondsSinceEpoch,
    };
  }

  factory Leaves.fromMap(Map<String, dynamic> map) {
    return Leaves(
      leaveId: map['leaveId'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      category: map['category'] ?? '',
      toDate: DateTime.fromMillisecondsSinceEpoch(map['toDate']),
      fromDate: DateTime.fromMillisecondsSinceEpoch(map['fromDate']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Leaves.fromJson(String source) => Leaves.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Leaves(leaveId: $leaveId, title: $title, description: $description, category: $category, toDate: $toDate, fromDate: $fromDate)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Leaves &&
        other.leaveId == leaveId &&
        other.title == title &&
        other.description == description &&
        other.category == category &&
        other.toDate == toDate &&
        other.fromDate == fromDate;
  }

  @override
  int get hashCode {
    return leaveId.hashCode ^
        title.hashCode ^
        description.hashCode ^
        category.hashCode ^
        toDate.hashCode ^
        fromDate.hashCode;
  }
}
