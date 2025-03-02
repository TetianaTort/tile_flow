import 'package:go_router/go_router.dart';
import 'package:tile_flow/config/router/page_routes.dart';
import 'package:tile_flow/config/router/router_notifire.dart';
import 'package:tile_flow/core/di/service_locator.dart';
import 'package:tile_flow/features/home/view/home_screen.dart';
import 'package:tile_flow/features/sign_in/view/sign_in_screen.dart';
import 'package:tile_flow/generla_app/auth/auth_bloc.dart';

final router = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: AppRoutes.home,
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
  refreshListenable: GoRouterRefreshStream(sl<AuthBloc>().stream),
  redirect: (context, state) {
    final authState = sl<AuthBloc>().state;
    if (authState == const AuthState.unauthenticated()) {
      return AppRoutes.signIn;
    }
    if (authState == const AuthState.authenticated()) {
      return AppRoutes.home;
    }
    return null;
  },
);
