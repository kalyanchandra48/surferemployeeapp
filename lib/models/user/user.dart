import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:employee_app/models/user/order_details.dart';

import '../leaves.dart';

class User {
  String id;
  String name;
  String imageUrl;
  String insuranceNum;
  String email;
  String pfNum;
  String dob;
  int leavesTaken;
  List<OrderDetails> orderDetails;
  List<Leaves> leaves;
  User({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.insuranceNum,
    required this.email,
    required this.pfNum,
    required this.dob,
    required this.leavesTaken,
    required this.orderDetails,
    required this.leaves,
  });

  User copyWith({
    String? id,
    String? name,
    String? imageUrl,
    String? insuranceNum,
    String? email,
    String? pfNum,
    String? dob,
    int? leavesTaken,
    List<OrderDetails>? orderDetails,
    List<Leaves>? leaves,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      insuranceNum: insuranceNum ?? this.insuranceNum,
      email: email ?? this.email,
      pfNum: pfNum ?? this.pfNum,
      dob: dob ?? this.dob,
      leavesTaken: leavesTaken ?? this.leavesTaken,
      orderDetails: orderDetails ?? this.orderDetails,
      leaves: leaves ?? this.leaves,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'imageUrl': imageUrl});
    result.addAll({'insuranceNum': insuranceNum});
    result.addAll({'email': email});
    result.addAll({'pfNum': pfNum});
    result.addAll({'dob': dob});
    result.addAll({'leavesTaken': leavesTaken});
    result
        .addAll({'orderDetails': orderDetails.map((x) => x.toMap()).toList()});
    result.addAll({'leaves': leaves.map((x) => x.toMap()).toList()});

    return result;
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
      insuranceNum: map['insuranceNum'] ?? '',
      email: map['email'] ?? '',
      pfNum: map['pfNum'] ?? '',
      dob: map['dob'] ?? '',
      leavesTaken: map['leavesTaken']?.toInt() ?? 0,
      orderDetails: List<OrderDetails>.from(
          map['orderDetails']?.map((x) => OrderDetails.fromMap(x))),
      leaves: List<Leaves>.from(map['leaves']?.map((x) => Leaves.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(id: $id, name: $name, imageUrl: $imageUrl, insuranceNum: $insuranceNum, email: $email, pfNum: $pfNum, dob: $dob, leavesTaken: $leavesTaken, orderDetails: $orderDetails, leaves: $leaves)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.id == id &&
        other.name == name &&
        other.imageUrl == imageUrl &&
        other.insuranceNum == insuranceNum &&
        other.email == email &&
        other.pfNum == pfNum &&
        other.dob == dob &&
        other.leavesTaken == leavesTaken &&
        listEquals(other.orderDetails, orderDetails) &&
        listEquals(other.leaves, leaves);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        imageUrl.hashCode ^
        insuranceNum.hashCode ^
        email.hashCode ^
        pfNum.hashCode ^
        dob.hashCode ^
        leavesTaken.hashCode ^
        orderDetails.hashCode ^
        leaves.hashCode;
  }
}
