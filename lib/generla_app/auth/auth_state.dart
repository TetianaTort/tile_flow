part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticated() = _AuthenticatedAuthState;

  const factory AuthState.unauthenticated() = _UnauthenticatedAuthState;

  const factory AuthState.authorization() = _AuthorizationAuthState;

  const factory AuthState.error() = _ErrordAuthState;
}
