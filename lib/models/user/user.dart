import 'dart:convert';

import 'package:isar/isar.dart';

part 'user.g.dart';

@Collection()
class User {
  @Id()
  int id;
  @Name('userId')
  String userId;
  @Name('firstname')
  String firstname;
  @Name('lastname')
  String lastname;
  @Name('location')
  String location;
  @Name('imageUrl')
  String imageUrl;
  @Name('insuranceNum')
  String insuranceNum;
  @Name('email')
  String email;
  @Name('pfNum')
  String pfNum;
  @Name('dob')
  String dob;
  User({
    required this.id,
    required this.userId,
    required this.firstname,
    required this.lastname,
    required this.location,
    required this.imageUrl,
    required this.insuranceNum,
    required this.email,
    required this.pfNum,
    required this.dob,
  });

  // int leavesTaken;

  // List<OrderDetails> orderDetails;

  // List<Leaves> leaves;

  User copyWith({
    int? id,
    String? userId,
    String? firstname,
    String? lastname,
    String? location,
    String? imageUrl,
    String? insuranceNum,
    String? email,
    String? pfNum,
    String? dob,
  }) {
    return User(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      firstname: firstname ?? this.firstname,
      lastname: lastname ?? this.lastname,
      location: location ?? this.location,
      imageUrl: imageUrl ?? this.imageUrl,
      insuranceNum: insuranceNum ?? this.insuranceNum,
      email: email ?? this.email,
      pfNum: pfNum ?? this.pfNum,
      dob: dob ?? this.dob,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'userId': userId});
    result.addAll({'firstname': firstname});
    result.addAll({'lastname': lastname});
    result.addAll({'location': location});
    result.addAll({'imageUrl': imageUrl});
    result.addAll({'insuranceNum': insuranceNum});
    result.addAll({'email': email});
    result.addAll({'pfNum': pfNum});
    result.addAll({'dob': dob});

    return result;
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id']?.toInt() ?? 0,
      userId: map['userId'] ?? '',
      firstname: map['firstname'] ?? '',
      lastname: map['lastname'] ?? '',
      location: map['location'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
      insuranceNum: map['insuranceNum'] ?? '',
      email: map['email'] ?? '',
      pfNum: map['pfNum'] ?? '',
      dob: map['dob'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(id: $id, userId: $userId, firstname: $firstname, lastname: $lastname, location: $location, imageUrl: $imageUrl, insuranceNum: $insuranceNum, email: $email, pfNum: $pfNum, dob: $dob)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.id == id &&
        other.userId == userId &&
        other.firstname == firstname &&
        other.lastname == lastname &&
        other.location == location &&
        other.imageUrl == imageUrl &&
        other.insuranceNum == insuranceNum &&
        other.email == email &&
        other.pfNum == pfNum &&
        other.dob == dob;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        userId.hashCode ^
        firstname.hashCode ^
        lastname.hashCode ^
        location.hashCode ^
        imageUrl.hashCode ^
        insuranceNum.hashCode ^
        email.hashCode ^
        pfNum.hashCode ^
        dob.hashCode;
  }
}
