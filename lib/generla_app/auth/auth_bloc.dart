import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.unauthenticated()) {
    on<LoggingInAuthEvent>(_loggingIn);
    on<LoggingOutAuthEvent>(loggingOut);
  }

  Future<void> _loggingIn(
    LoggingInAuthEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(const _AuthorizationAuthState());
    await Future<void>.delayed(const Duration(seconds: 2)).then(
      (_) => emit(
        const _AuthenticatedAuthState(),
      ),
    );
  }

  Future<void> loggingOut(
    LoggingOutAuthEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(const _UnauthenticatedAuthState());
  }
}
