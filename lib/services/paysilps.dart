import 'package:firebase_storage/firebase_storage.dart';

class PaySlipsService {
  Reference storageRef = FirebaseStorage.instance.ref();

  String getPayslipFromStorage() {
    // final pathReference =
    //     storageRef.child("payslips/nEdRUlQyXrWYeCVLbeQAgrcCR6F2");
    // print(pathReference.getData());

    return '';
  }
}
