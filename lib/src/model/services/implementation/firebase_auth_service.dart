import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex_app/src/model/services/interfaces/i_firebase_auth_service.dart';

@LazySingleton(as: IFirebaseAuthService)
class FirebaseAuthService implements IFirebaseAuthService {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  Stream<User?> get authStateChanges => firebaseAuth.authStateChanges();

  @override
  StreamSubscription<User?> watchAuthStateChange(
    void Function(User?) onChanged,
  ) {
    return firebaseAuth.authStateChanges().listen(onChanged);
  }

  @override
  bool get isLoggedIn => firebaseAuth.currentUser != null;

  @override
  void logoutUser() async {
    await firebaseAuth.signOut();
  }

  @override
  String? get getUserId => firebaseAuth.currentUser?.uid;

  @override
  Future<UserCredential> registerUserEmail({
    required String email,
    required String password,
  }) async {
    final result = await firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return result;
  }

  @override
  Future<UserCredential> loginUser({
    required String email,
    required String password,
  }) async {
    final result = await firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return result;
  }
}
