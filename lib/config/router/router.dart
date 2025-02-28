import 'package:go_router/go_router.dart';
import 'package:tile_flow/config/router/page_routes.dart';
import 'package:tile_flow/features/home/view/home_screen.dart';
import 'package:tile_flow/features/sign_in/view/sign_in_screen.dart';

final router = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: AppRoutes.signIn,
  routes: [
    GoRoute(
      name: AppNamedRoutes.signIn,
      path: AppRoutes.signIn,
      builder: (context, state) => const SignInScreen(),
    ),
    GoRoute(
      name: AppNamedRoutes.home,
      path: AppRoutes.home,
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
