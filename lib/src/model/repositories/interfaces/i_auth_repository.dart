import 'package:firebase_auth/firebase_auth.dart';
import 'package:pokedex_app/src/model/failures/core_failure.dart';
import 'package:pokedex_app/src/view_model/models/user_model.dart';
import 'package:fpdart/fpdart.dart';

abstract class IAuthRepository {
  Future<Either<CoreFailure, UserCredential>> loginUser({
    required String email,
    required String password,
  });

  Future<Either<CoreFailure, Unit>> registerUserEmail({
    required UserModel user,
  });
}
