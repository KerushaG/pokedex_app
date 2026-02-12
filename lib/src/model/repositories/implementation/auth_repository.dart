import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex_app/injection.dart';
import 'package:pokedex_app/src/model/failures/core_failure.dart';
import 'package:pokedex_app/src/model/failures/firebase_auth_failure.dart';
import 'package:pokedex_app/src/model/repositories/interfaces/i_auth_repository.dart';
import 'package:pokedex_app/src/model/services/interfaces/i_firebase_auth_service.dart';
import 'package:pokedex_app/src/view_model/models/user_model.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  AuthRepository();

  @override
  Future<Either<CoreFailure, UserCredential>> loginUser({
    required String email,
    required String password,
  }) async {
    try {
      final result = await coreSl<IFirebaseAuthService>().loginUser(
        email: email,
        password: password,
      );
      return right(result);
    } on FirebaseAuthException catch (e) {
      return left(FirebaseAuthFailure.getFirebaseAuthFailure(e));
    } catch (e) {
      return left(const FirebaseAuthFailure.unknown());
    }
  }

  @override
  Future<Either<CoreFailure, Unit>> registerUserEmail({
    required UserModel user,
  }) async {
    try {
      final registeredUser = await coreSl<IFirebaseAuthService>()
          .registerUserEmail(email: user.email, password: user.password);

      if (registeredUser.user != null) {
        return right(unit);
      }
      return left(const FirebaseAuthFailure.userNotFound());
    } on FirebaseAuthException catch (e) {
      return left(FirebaseAuthFailure.getFirebaseAuthFailure(e));
    } catch (e) {
      return left(const FirebaseAuthFailure.unknown());
    }
  }
}
