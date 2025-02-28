import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tile_flow/config/router/router.dart';
import 'package:tile_flow/config/theme/app_theme.dart';

class GeneralApp extends StatelessWidget {
  const GeneralApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        title: 'Tile flow',
        theme: lightTheme,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        routerConfig: router,
      );
}
