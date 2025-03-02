part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loggingIn() = LoggingInAuthEvent;

  const factory AuthEvent.loggingOut() = LoggingOutAuthEvent;
}
