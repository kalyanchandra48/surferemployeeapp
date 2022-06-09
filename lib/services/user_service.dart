import 'package:employee_app/services/http.dart';
import 'package:isar/isar.dart';

import '../models/user/user.dart';
import '../provider/app_view_model.dart';
import 'locator.dart';

class UserService {
  final Isar _isar = locator<AppViewModel>().isar;

  static Future<dynamic> setUserCustomClaims() async {
    dynamic callable = await FireFunctionsHttpsCaller.post(
      Uri.parse(
          'https://us-central1-employee-app-57d9a.cloudfunctions.net/functions/users/givePrivileges'),
      null,
    );
  }

  addProfile(String firstname, String lastname, String location) async {
    User? isarUser = await _isar.users.get(1);

    _isar.writeTxn((isar) => isar.users.put(User(
        id: 1,
        userId: isarUser!.userId,
        firstname: firstname,
        lastname: lastname,
        location: location,
        imageUrl: '',
        insuranceNum: '',
        email: isarUser.email,
        pfNum: '',
        dob: '')));

    final User? myUser = await _isar.users.get(1);
    print('User from Isar---->$myUser');
  }

  addInitialDetailsToIsar(String uid, String email) async {
    await _isar
        .writeTxn(
          (isar) => isar.users.put(User(
              id: 1,
              userId: uid,
              firstname: '',
              lastname: '',
              location: '',
              imageUrl: '',
              insuranceNum: '',
              email: email,
              pfNum: '',
              dob: '')),
        )
        .then((value) => print(value));
  }

  updateUsertoDb(
    User user,
  ) async {
    print('I got printed from here ${user.email.toString()}');
    print(user.email.runtimeType);
    String myEmail = user.email.toString();
    print(myEmail);
    print(myEmail.runtimeType);

    dynamic res = await FireFunctionsHttpsCaller.post(
      Uri.parse(
          'https://us-central1-employee-app-57d9a.cloudfunctions.net/functions/users/updateProfile'),
      {
        "firstName": user.firstname,
        "lastName": user.lastname,
        "location": user.location,
        // "email": myEmail,
      },
    );
  }

  // Future<void> getDataFromDb(
  //   User user,
  // ) async {
  //   dynamic res = await FireFunctionsHttpsCaller.get(
  //       Uri.parse(
  //           'https://us-central1-employee-app-57d9a.cloudfunctions.net/functions/users/${user.userId}'),
  //       {
  //         "firstname": user.firstname,
  //         "lastname": user.lastname,
  //       });
  // }

  createorder() async {
    User? isarUser = await _isar.users.get(1);
    dynamic postOrder = FireFunctionsHttpsCaller.post(
        Uri.parse(
            'https://us-central1-employee-app-57d9a.cloudfunctions.net/purchasable/purchase/${isarUser!.userId}'),
        {});
  }
}
