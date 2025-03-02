import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tile_flow/config/constants/injectable_environments.dart';
import 'package:tile_flow/core/di/service_locator.dart';
import 'package:tile_flow/core/helpers/log_helper.dart';
import 'package:tile_flow/generla_app/general_app_wrapper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies(TileFlowEnv.dev);

  Bloc.observer = MyBlocObserver();

  runApp(const GeneralAppWrapper());
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
