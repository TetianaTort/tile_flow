import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tile_flow/core/helpers/log_helper.dart';
import 'package:tile_flow/generla_app/general_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(const GeneralApp());
}

class MyBlocObserver extends BlocObserver {
  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    logger.t('Transition: $transition');
    super.onTransition(bloc, transition);
  }

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    logger.t(event.toString());
    super.onEvent(bloc, event);
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    logger.t(
      '$bloc changed from ${change.currentState} to ${change.nextState}',
    );
    super.onChange(bloc, change);
  }
}
