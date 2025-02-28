import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tile_flow/config/constants/dimensions.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(locale.signInScreenTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.paddingM),
        child: Column(
          spacing: 10,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'labelText',
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(locale.continueBtn),
            )
          ],
        ),
      ),
    );
  }
}
