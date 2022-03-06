import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;

class FireFunctionsHttpsCaller {
  static Future<Model> post<Model extends ModelBlueprint>(
      Uri uri, dynamic data, Model model) async {
    final response =
        await http.post(uri, body: data, headers: await _generateHeader());
    if (response.statusCode != 200) {
      print("this is an error da");
    }
    final body = response.body;
    return model.fromJson(body) as Model;
  }

  get(Uri uri) {}
}

class ModelBlueprint {
  ModelBlueprint fromJson(String str) {
    return ModelBlueprint();
  }
}

Future<Map<String, String>> _generateHeader() async {
  final user = await FirebaseAuth.instance.currentUser;
  if (user == null) {
    print("Not Logged in");
  }
  final idToken = await user!.getIdToken();
  return {'authorization': 'Bearer $idToken'};
}
