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
      
      print(response.body);
    }
    final body = response.body;
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
