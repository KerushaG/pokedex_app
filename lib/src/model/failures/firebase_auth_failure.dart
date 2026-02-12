import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex_app/src/model/failures/core_failure.dart';

part 'firebase_auth_failure.freezed.dart';

@freezed
class FirebaseAuthFailure with _$FirebaseAuthFailure implements CoreFailure {
  //Password is invalid or user hasn't set a password
  const factory FirebaseAuthFailure.wrongPassword() = WrongPassword;
  //Provided email is not in a valid format
  const factory FirebaseAuthFailure.invalidEmail() = InvalidEmail;
  //Credential is invalid or expired
  const factory FirebaseAuthFailure.invalidCredential() = InvalidCredential;
  //Account corresponding to the email is disabled
  const factory FirebaseAuthFailure.userDisabled() = UserDisabled;
  //No user exists with the given email
  const factory FirebaseAuthFailure.userNotFound() = UserNotFound;
  // An account already exists with this email
  const factory FirebaseAuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  //Email/password sign-in isn't enabled on Firebase console
  const factory FirebaseAuthFailure.operationNotAllowed() = OperationNotAllowed;
  //Password strength is inadequate
  const factory FirebaseAuthFailure.weakPassword() = WeakPassword;
  // Email already linked with another provider
  const factory FirebaseAuthFailure.accountExistsWithDifferentCredentials() =
      AccountExistsWithDifferentCredentials;
  //Phone verification code is incorrect
  const factory FirebaseAuthFailure.invalidVerificationCode() =
      InvalidVerificationCode;
  //Phone verification ID is invalid
  const factory FirebaseAuthFailure.invalidVerificationId() =
      InvalidVerificationId;
  //Credential doesn’t match signed-in user
  const factory FirebaseAuthFailure.userMismatch() = UserMismatch;
  // Email link has expired
  const factory FirebaseAuthFailure.expiredActionCode() = ExpiredActionCode;
  // Unexpected error (network, timeout, or unmapped exception)
  const factory FirebaseAuthFailure.unknown() = Unknown;

  factory FirebaseAuthFailure.getFirebaseAuthFailure(
    FirebaseAuthException error,
  ) {
    switch (error.code) {
      case 'wrong-password':
        return const FirebaseAuthFailure.wrongPassword();
      case 'invalid-email':
        return const FirebaseAuthFailure.invalidEmail();
      case 'invalid-credential':
        return const FirebaseAuthFailure.invalidCredential();
      case 'user-disabled':
        return const FirebaseAuthFailure.userDisabled();
      case 'user-not-found':
        return const FirebaseAuthFailure.userNotFound();
      case 'email-already-in-use':
        return const FirebaseAuthFailure.emailAlreadyInUse();
      case 'operation-not-allowed':
        return const FirebaseAuthFailure.operationNotAllowed();
      case 'weak-password':
        return const FirebaseAuthFailure.weakPassword();
      case 'account-exists-with-different-credential':
        return const FirebaseAuthFailure.accountExistsWithDifferentCredentials();
      case 'invalid-verification-code':
        return const FirebaseAuthFailure.invalidVerificationCode();
      case 'invalid-verification-id':
        return const FirebaseAuthFailure.invalidVerificationId();
      case 'user-mismatch':
        return const FirebaseAuthFailure.userMismatch();
      case 'expired-action-code':
        return const FirebaseAuthFailure.expiredActionCode();
      default:
        return const FirebaseAuthFailure.invalidCredential();
    }
  }
}
