part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required CoreFailure? failure,
    UserModel? user,
    @Default(false) bool isLoading,
    /// Set only when login or signUp succeeds; used by the app gate, not form data.
    UserModel? authenticatedUser,
  }) = _AuthState;

  factory AuthState.initial() =>
      AuthState(user: null, failure: null, authenticatedUser: null);
}
