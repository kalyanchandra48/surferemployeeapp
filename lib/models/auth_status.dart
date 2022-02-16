import 'package:firebase_auth/firebase_auth.dart';

class AuthStatus {
  String message;
  User? user;
  AUTH_STATUS status;
  AuthStatus({
    required this.message,
    this.user,
    required this.status,
  });
}

enum AUTH_STATUS {
  VERIFICATION_NOT_STARTED,
  VERIFICATION_STARTED,
  VERIFICATION_COMPLETED,
  VERIFICATION_FAILED
}
