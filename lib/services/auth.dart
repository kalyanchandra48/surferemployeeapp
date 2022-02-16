import 'dart:async';
import 'package:employee_app/models/auth_status.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final StreamController<AuthStatus> _streamController = StreamController();
  AuthService() {
    _streamController.add(AuthStatus(
        status: AUTH_STATUS.VERIFICATION_NOT_STARTED,
        message: 'verification not started'));
    _firebaseAuth.authStateChanges().listen((User? user) {
      if (user != null) {
        if (!user.isAnonymous) {
          _streamController.add(AuthStatus(
              status: AUTH_STATUS.VERIFICATION_COMPLETED,
              user: user,
              message: 'loged in'));
        }
      }
    });
  }
  Stream<AuthStatus> get authStatus => _streamController.stream;

  Future<User> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    // Once signed in, return the UserCredential
    User user =
        (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
    _streamController.add(
      AuthStatus(
          message: 'Sign in completed',
          user: user,
          status: AUTH_STATUS.VERIFICATION_COMPLETED),
    );
    return user;
  }

  Future<void> signOut() async {
    _streamController.add(
      AuthStatus(
        status: AUTH_STATUS.VERIFICATION_NOT_STARTED,
        message: 'Signed out',
      ),
    );

    await _firebaseAuth.signOut();
  }
}
