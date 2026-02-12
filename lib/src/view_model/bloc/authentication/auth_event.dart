part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signUp() = SignUp;
  const factory AuthEvent.login() = Login;
  const factory AuthEvent.onPasswordChanged({required String password}) =
      OnPasswordChanged;
  const factory AuthEvent.onEmailChanged({required String email}) =
      OnEmailChanged;
  const factory AuthEvent.onNameChanged({required String name}) = OnNameChanged;
  const factory AuthEvent.logout() = Logout;
}
