import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileViewModel extends ChangeNotifier {
  static ProfileViewModel of(BuildContext context) =>
      context.read<ProfileViewModel>();

  ValueNotifier<String> url = ValueNotifier('');
}
