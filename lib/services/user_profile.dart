// import 'dart:io';

// import 'dart:typed_data';

// import 'package:employee_app/services/utils.dart';
// //import 'package:firebase_storage/firebase_storage.dart';

// class UserProfile {
//   static Future<String> uploadUserProfile(File file, String uid) async {
//     Uint8List image = file.readAsBytesSync().buffer.asUint8List();
//     String filename = Utils.getRandomSecureString(20);

//     Reference ref = FirebaseStorage.instance
//         .ref()
//         .child('ProfileImages')
//         .child(uid)
//         .child(filename);
//     UploadTask uploadProfile = ref.putData(image);
//     return await (await uploadProfile).ref.getDownloadURL();
//   }
// }
