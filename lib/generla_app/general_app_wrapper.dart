import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tile_flow/core/di/service_locator.dart';
import 'package:tile_flow/generla_app/auth/auth_bloc.dart';
import 'package:tile_flow/generla_app/general_app.dart';

class GeneralAppWrapper extends StatelessWidget {
  const GeneralAppWrapper({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: sl<AuthBloc>(),
          ),
        ],
        child: const GeneralApp(),
      );
}
