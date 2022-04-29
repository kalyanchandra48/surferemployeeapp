import 'package:employee_app/models/it_request/post_request.dart';
import 'package:employee_app/services/http.dart';

class ITRequestService {
  static Future<dynamic> postITRequest(
    PostRequest data,
  ) async {
    await FireFunctionsHttpsCaller.post(
      Uri.parse(
          'https://us-central1-employee-app-57d9a.cloudfunctions.net/functions/itRequests/create'),
      data.toMap(),
    );
  }

  static Future<String> fetchRequestType() async {
    final response = await FireFunctionsHttpsCaller.get(Uri.parse(
        'https://us-central1-employee-app-57d9a.cloudfunctions.net/functions/itRequests/types'));
    String requestType = response;
    print('this is response ${response.body}');

    return requestType;
  }

  // static Future<dynamic> postITRequest() async {
  //   final user = FirebaseAuth.instance.currentUser;
  //   print(user);
  //   final idToken = await user!.getIdToken();
  //   final header = {'authorization': 'Bearer $idToken'};
  //   final data = {
  //     "description":
  //         "This is function check, this is greater than 20, more more more and more more more.This is function check, this is greater than 20, more more more and more more more",
  //     "priority": "High",
  //     "requestType": "Gitlab",
  //   };
  //   http
  //       .post(
  //     Uri.parse(
  //         'https://us-central1-employee-app-57d9a.cloudfunctions.net/functions/itRequests/create'),
  //     headers: header,
  //     body: data,
  //   )
  //       .then((value) {
  //     print("SUCCESS");
  //   }).catchError((e) {
  //     print(e.toString());
  //   });
  // }

  // static Future<dynamic> getITRequestType() async {
  //   final user = FirebaseAuth.instance.currentUser;
  //   final idToken = await user!.getIdToken();
  //   final header = {'authorization': 'Bearer $idToken'};
  //   final response = http.get(
  //       Uri.parse(
  //           'https://us-central1-employee-app-57d9a.cloudfunctions.net/functions/itRequests/types'),
  //       headers: header);
  // }
}
