import 'dart:convert';

import 'package:isar/isar.dart';

part 'user.g.dart';

@Collection()
class User {
  @Id()
  int? id = Isar.autoIncrement;
  @Name('userid')
  String userid;
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

  // int leavesTaken;

  // List<OrderDetails> orderDetails;

  // List<Leaves> leaves;
  User({
    this.id,
    required this.userid,
    required this.firstname,
    required this.lastname,
    required this.location,
    required this.imageUrl,
    required this.insuranceNum,
    required this.email,
    required this.pfNum,
    required this.dob,
  });

  User copyWith({
    int? id,
    String? userid,
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
      userid: userid ?? this.userid,
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

    if (id != null) {
      result.addAll({'id': id});
    }
    result.addAll({'userid': userid});
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
      id: map['id']?.toInt(),
      userid: map['userid'] ?? '',
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
    return 'User(id: $id, userid: $userid, firstname: $firstname, lastname: $lastname, location: $location, imageUrl: $imageUrl, insuranceNum: $insuranceNum, email: $email, pfNum: $pfNum, dob: $dob)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.id == id &&
        other.userid == userid &&
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
        userid.hashCode ^
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
