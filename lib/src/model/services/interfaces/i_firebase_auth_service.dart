import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';

abstract class IFirebaseAuthService {
  Future<UserCredential> registerUserEmail({
    required String email,
    required String password,
  });
  Future<UserCredential> loginUser({
    required String email,
    required String password,
  });
  String? get getUserId;
  Stream<User?> get authStateChanges;
  StreamSubscription<User?> watchAuthStateChange(void Function(User?) user);
  void logoutUser();
  bool get isLoggedIn;
}
