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
    required this.dob,
    required this.email,
    required this.id,
    required this.imageUrl,
    required this.insuranceNum,
    required this.leavesTaken,
    required this.name,
    required this.orderDetails,
    required this.pfNum,
    required this.leaves,
  });
}
