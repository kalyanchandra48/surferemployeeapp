import 'package:cloud_functions/cloud_functions.dart';
import 'package:employee_app/services/http.dart';

class UserService {
  static Future<dynamic> setUserCustomClaims() async {
    dynamic callable = await FireFunctionsHttpsCaller.post(
      Uri.parse(
          'https://us-central1-employee-app-57d9a.cloudfunctions.net/functions/users/givePrivileges'),
      null,
    );
  }
}
