import 'package:cloud_functions/cloud_functions.dart';

class UserService {
  static Future<dynamic> setUserCustomClaims() async {
    HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
      'functions/users/givePrivileges',
    );
    await callable.call();
  }
}
