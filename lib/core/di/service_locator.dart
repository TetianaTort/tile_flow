import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:tile_flow/core/di/service_locator.config.dart';

final GetIt sl = GetIt.instance;

@InjectableInit(
  initializerName: r'$configureDependencies',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependencies(String env) async =>
    $configureDependencies(sl, environment: env);
