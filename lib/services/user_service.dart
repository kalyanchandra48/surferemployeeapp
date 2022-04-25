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
    // print(isarUser?.id);

    // print(firstname);

    _isar.writeTxn((isar) => isar.users.put(User(
        id: 1,
        userId: isarUser!.userId,
        firstname: firstname,
        lastname: lastname,
        location: location,
        imageUrl: 'imageUrl',
        insuranceNum: 'insuranceNum',
        email: 'email',
        pfNum: 'pfNum',
        dob: 'dob')));

    //print('isarAsdded');
    final User? myUser = await _isar.users.get(1);
    print('User from Isar---->$myUser');
    //print(myUser);
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
        .then((value) => print('Initial user added to isar'));
  }

  updateUsertoDb(
    User user,
  ) async {
    dynamic res = await FireFunctionsHttpsCaller.post(
      Uri.parse(
          'https://us-central1-employee-app-57d9a.cloudfunctions.net/functions/users/${user.userId}'),
      {
        "firstName": user.firstname,
        "lastName": user.lastname,
        "location": user.location,
      },
    );
    print(res);
  }
}
