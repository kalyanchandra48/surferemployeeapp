import 'package:cloud_functions/cloud_functions.dart';

class ITRequestService {
  static Future<dynamic> postITRequest() async {
    HttpsCallable callable =
        FirebaseFunctions.instance.httpsCallable('functions/itRequests/update');
    HttpsCallableResult result = await callable.call({
      "description": "This is function check",
      "priority": "High",
      "requestType": "Gitlab",
    });
    //return result.data;
  }
}
