class AppRoutes {
  static const home = '/home_screen';
  static const signIn = '/sign_in_screen';
}

class AppNamedRoutes {
  static const String home = AppRoutes.home;
  static const signIn = '$home${AppRoutes.signIn}';
}
