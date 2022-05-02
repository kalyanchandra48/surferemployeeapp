import 'dart:math';
import 'package:random_string/random_string.dart';

class Utils {
  static String getRandomSecureString(int length) {
    Random r = Random.secure();
    return randomNumeric(length, provider: CoreRandomProvider.from(r));
  }
}
