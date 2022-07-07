import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;

class FireFunctionsHttpsCaller {
  static Future<dynamic> post(
    Uri uri,
    Map<dynamic, dynamic> data,
  ) async {
    print("Request BODY : $data");
    final response = await http.post(uri,
        body: jsonEncode(data), headers: await _generateHeader());
    if (response.statusCode != 200) {
      print('failed');
    } else {
      print('RESPONSE BODY');
      print(response.body);
    }
    // Map<int, List<String>> map = {
    //   0: [],
    //   1: [],
    //   2: [],
    //   3: [],
    //   4: [],
    //   5: [],
    //   6: [],
    //   7: [],
    //   8: [],
    //   9: [],
    //   10: [],
    //   11: [],
    //   12: [],
    //   13: [],
    // };
    var body = response.body;
    // var jsonresponse = jsonDecode(response.body);
    // jsonresponse['data'];
    // print('check');
    // print(jsonresponse['data']["1655791963392"]);
    // List<DateTime> dateTime = List<DateTime>.from(jsonresponse['data']
    //     .keys
    //     .map(
    //         (e) => DateTime.fromMillisecondsSinceEpoch(int.parse(e.toString())))
    //     .toList());

    // for (var e in dateTime) {
    //   print('e month');
    //   print(e.month);
    //   print(e.millisecondsSinceEpoch);
    //   print(jsonresponse['data']["${e.millisecondsSinceEpoch}"]);

    //   List<String> list = map[e.month] ?? [];
    //   {
    //     map[e.month] = jsonresponse['data']["${e.millisecondsSinceEpoch}"];
    //   }
    // }
    // print('MAP');
    // print(map);

    // print(dateTime);
    // print('this is response');

    return body;
  }

  static Future<dynamic> get(Uri uri) async {
    final response = await http.get(uri, headers: await _generateHeader());
    final data = jsonDecode(response.body);
    //String data = response.body;
    print('this is data ${data['data']}');
    return response.body;
  }
}

class ModelBlueprint {
  ModelBlueprint fromJson(String str) {
    return ModelBlueprint();
  }
}

Future<Map<String, String>> _generateHeader() async {
  final user = FirebaseAuth.instance.currentUser;
  if (user == null) {
    print("Not Logged in");
  }
  final idToken = await user!.getIdToken();
  return {
    'authorization': 'Bearer $idToken',
    'Content-Type': 'application/json'
  };
}
