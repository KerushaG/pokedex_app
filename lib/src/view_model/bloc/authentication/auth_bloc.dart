import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex_app/src/model/failures/core_failure.dart';
import 'package:pokedex_app/src/model/repositories/interfaces/i_auth_repository.dart';
import 'package:pokedex_app/src/view_model/models/user_model.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@Singleton()
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authRepository) : super(AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        signUp: (_) async {
          emit(state.copyWith(isLoading: true));

          final result = await _authRepository.registerUserEmail(
            user: state.user ?? UserModel(email: '', password: '', name: ''),
          );
          result.fold(
            (failure) {
              emit(state.copyWith(isLoading: false, failure: failure));
            },
            (success) {
              emit(
                state.copyWith(
                  isLoading: false,
                  failure: null,
                  authenticatedUser: state.user,
                ),
              );
            },
          );
        },
        login: (_) async {
          emit(state.copyWith(isLoading: true));
          final result = await _authRepository.loginUser(
            email: state.user!.email,
            password: state.user!.password,
          );
          result.fold(
            (failure) =>
                emit(state.copyWith(isLoading: false, failure: failure)),
            (success) => emit(
              state.copyWith(
                isLoading: false,
                failure: null,
                authenticatedUser: state.user,
              ),
            ),
          );
        },
        logout: (_) {
          emit(state.copyWith(authenticatedUser: null, user: null));
        },
        onNameChanged: (value) {
          final update = state.user;
          emit(
            state.copyWith(
              user: UserModel(
                name: value.name,
                email: update?.email ?? '',
                password: update?.password ?? '',
              ),
            ),
          );
        },
        onEmailChanged: (value) {
          final update = state.user;
          emit(
            state.copyWith(
              user: UserModel(
                name: update?.name ?? '',
                email: value.email,
                password: update?.password ?? '',
              ),
            ),
          );
        },
        onPasswordChanged: (value) {
          final update = state.user;
          emit(
            state.copyWith(
              user: UserModel(
                name: update?.name ?? '',
                email: update?.email ?? '',
                password: value.password,
              ),
            ),
          );
        },
      );
    });
  }
  final IAuthRepository _authRepository;
}
