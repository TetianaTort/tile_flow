import 'package:flutter/material.dart';
import 'package:tile_flow/generla_app/auth/auth_bloc.dart';

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(this.stream) {
    stream.listen((_) {
      notifyListeners();
    });
  }
  final Stream<AuthState> stream;
}
